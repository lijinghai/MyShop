<template>
	<view class="pics">
		<!-- 可滚动区域 -->
		<scroll-view class="left" scroll-y>
			<view @click="leftClickHandle(index,item.id)" :class="active===index?'active':''" v-for="(item,index) in cates" :key="item.id">
				{{item.title}}
			</view>
		</scroll-view>
		
		<!-- 右侧信息页显示 -->
		<scroll-view class="right" scroll-y>
			<view class="item" v-for="item in secondData" :key="item.id">
				<image @click="previewImg(item.imgUrl)" :src="item.imgUrl"></image>
				<text>{{item.title}}</text>
			</view>
			<text v-if="secondData.length === 0">暂无数据</text>
		</scroll-view>

	</view>
</template>

<script>
	export default {
		data() {
			return {
				cates: [],
				active: 0,
				secondData: []
			}
		},
		methods: {
			async getPicsCate () {
				const res = await this.$myRequest({
					url:'/category?limit=91&page=1&sort=1'
				})
				console.log(res)
				this.cates = res.data.data.items
				this.leftClickHandle(0,this.cates[0].id)
			},
			async leftClickHandle (index,id) {
				console.log(id)
				this.active = index
				// 获取右侧的数据
				const res = await this.$myRequest ({
					url: '/images/%7Bid%7D?limit=90&page=1&sort=1&id='+id
				})
				console.log(res)
				this.secondData = res.data.data.items
			},
			previewImg(current) {
				const urls = this.secondData.map(item=>{
					return item.imgUrl
				})
				console.log(urls)
				// 预览图片
				uni.previewImage({
					current,
					urls
				})
			}
		},
		onLoad() {
			this.getPicsCate()
			
		}
	}
</script>

<style lang="scss">
page {
	height: 100%;
}
.pics {
	height: 100%;
	// 一行显示
	display: flex;
	.left {
		width: 200rpx;
		height: 100%;
		border-right: 1px solid #eee;
		view {
			height: 60px;
			line-height: 60px;
			color: #333;
			text-align: center;
			font-size: 30rpx;
			border-top: 1px solid #eee;
		}
		// 选中颜色
		.active {
			background: $shop-color;
			color: #fff;
		}
	}
	.right {
		height: 100%;
		width: 520rpx;
		margin: 10rpx auto;
		.item {
			imge {
				width: 520rpx;
				height: 520rpx;
				border-radius: 5px;
			}
			text {
				font-size: 30rpx;
				line-height: 60rpx;
			}
		}
	}
}
</style>
