<template>
	<view class="news">
		
		<news-item @itemClick="goDetail" :list="newslist"></news-item>
		
	<!-- 	<view class="new_item" v-for="item in newslist" :key="item.id">
			<image :src="item.imgUrl"></image>
			<view class="right">
				<view class="title">
					{{item.title}}
				</view>
				<view class="info">
					<text>发表时间:{{item.addTime}}</text>
					<text>浏览次数:{{item.click}}</text>
				</view>
			</view>
		</view> -->
	</view>
</template>

<script>
	import newsItem from '../../components/news-item/news-item.vue'
	export default {
		data() {
			return {
				newslist: []
			}
		},
		methods: {
			async getNews () {
				const res = await this.$myRequest({
					url: '/newslist?limit=111&page=1&sort=1'
				})
				console.log(res)
				this.newslist = res.data.data.items
			},
			goDetail (id) {
				console.log(id)
				uni.navigateTo({
					url: '/pages/new-detail/new-detail?id='+id
				})
			}
		},
		// 注册组件
		components: {"news-item":newsItem},
		onLoad() {
			this.getNews()
		}
	}
</script>

<style lang="scss">
.news {
	// .new_item {
	// 	display: flex;
	// 	padding: 10rpx 20rpx;
	// 	border-bottom: 1px solid $shop-color;
	// 	image {
	// 		min-width: 200rpx;
	// 		max-width: 200rpx;
	// 		height: 150rpx;
	// 	}
	// 	.right {
	// 		margin-left: 15rpx;
	// 		display: flex;
	// 		flex-direction: column;
	// 		justify-content: space-between;
	// 		.title {
	// 			font-size: 30rpx;
	// 		}
	// 		.info {
	// 			font-size: 24rpx;
	// 			text:nth-child(2){
	// 				margin-left: 30rpx;
	// 			}
	// 		}
	// 	}
	// }
}
</style>
