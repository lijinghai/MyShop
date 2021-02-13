<template>
	<view class="home">
		<!-- 轮播图 -->
		<!-- indicator-dots 图片下的点 -->
		<!-- circular 循环 -->
		<swiper indicator-dots circular>
			<swiper-item v-for="item in swipers" :key='item.id'>
				<image :src="item.url"></image>
			</swiper-item>
		</swiper>
		
		
		<!-- 导航区 -->
		<view class="nav">
			<view class="nav_item" v-for="(item,index) in navs" :key="index" @click="navItemClick(item.path)">
				<view :class="item.icon"></view>
				<text>{{item.title}}</text>
			</view>
		</view>
		
		
		<!-- 推荐商品区 -->
		<view class="hot_goods">
			<view class="title">推荐商品</view>
			<!-- 组件分装 -->
			<goods-list @goodsItemClick="goGoodsDetatil" :goods="goods"></goods-list>
			
			<!-- <view class="goods_list">
				<view class="goods_item" v-for="item in goods" :key="item.id">
				<image :src="item.imgUrl"></image>
				<view class="price">
					<text>￥{{item.sellPrice}}</text>
					<text>￥{{item.marketPrice}}</text>
				</view>
				<view class="goods_name">
					{{item.title}}
				</view>
			</view>
		</view> -->
		
	</view>
		
	</view>
</template>

<script>
	import goodsList from '../../components/goods-list/goods-list.vue'
	export default {
		data() {
			return {
				swipers: [],
				goods:[],
				navs: [
					{
						icon: 'iconfont icon-shangdian',
						title: '琦琦超市',
						path: '/pages/goods/goods'
					},
					{
						icon: 'iconfont icon-xiaoxi',
						title: '联系我们',
						path: '/pages/contact/contact'
					},
					{
						icon: 'iconfont icon-gouwudai',
						title: '社区图片',
						path: '/pages/pics/pics'
					},
					{
						icon: 'iiconfont icon-shuju',
						title: '学习视频',
						path: '/pages/videos/videos'
					}
				]
			}
		},
		onLoad() {
			this.getSwipers()
			this.getHotGoods()
		},
		components: {"goods-list":goodsList},
		methods: {
			//获取轮播图的数据
			async getSwipers () {
		/* 		console.log('获取轮播图的数据')
				uni.request({
					url: 'http://localhost:8091/unbo',
					success:res=>{
						console.log(res)
						if(res.data.status !==0) {
							return uni.showToast({
								title: '获取数据失败'
							})
						}
						this.swipers = res.data.message
					}
				}) */
				const res = await this.$myRequest({
					url: '/unbo?limit=5&page=1&sort=1'
				})
				console.log(res)
				this.swipers = res.data.data.items
			},
			// 获取热门商品列表数据
			async getHotGoods() {
				const res = await this.$myRequest({
					url: '/goods?limit=6&page=1&sort=1'
				})
				console.log(res)
				this.goods = res.data.data.items
			},
			// 导航事件的处理
			navItemClick (url) {
				console.log('跳转',url)
				uni.navigateTo({
					url
				})
			},
			// 导航到商品详情页
			goGoodsDetatil (id) {
				uni.navigateTo({
					url: '/pages/goods-detail/goods-detail?id='+id
				})
			}
		}
	}
</script>

<style lang="scss">
	.home{
		swiper{
			width: 750rps;
			height: 380rps;
			imagec {
				height: 100%;
				width: 100%;
			}
		}
	}
	.nav {
		display: flex;
		.nav_item {
			width: 25%;
			text-align: center;
			view {
				width: 120rpx;
				height: 120rpx;
				background: #CD3333;
				border-radius: 60rpx;
				margin: 10px auto;
				line-height: 50px;
				color: #fff;
				font-size: 70rpx;
			}
			.icon-xiaoxi{
				// line-height: 55rpx;
				font-size: 75rpx;
			}
			text {
				font-size: 30rpx;
			}
		}
	}
	.hot_goods {
		background: #eee;
		overflow: hidden;
		margin-top:10px;
		.title{
			height: 50px;
			line-height: 50px;
			color: $shop-color;
			text-align: center;
			letter-spacing: 20px;
			background-color: #fff;
			margin: 7rpx 0;
		}
		
		.goods_list {
			padding: 0 15rpx;
			display: flex;  //一行显示
			flex-wrap: wrap; //换行显示
			justify-content: space-between; //两边贴边对其
			.goods_item {
				background: #fff;
				width: 355rpx;
				margin: 10rpx 0;
				padding: 15rpx;
				box-sizing: border-box;
				
				image {
					width: 80%;
					height: 150px;
					display: block;
					margin: auto;
				}
				.price {
					color: $shop-color;
					font-size: 36rpx;
					margin: 20rpx 0 5rpx 0;
					text:nth-child(2) {
						color: #ccc;
						font-size: 28rpx;
						margin-left: 17rpx;
						text-decoration: line-through;
					}
				}
				
				.goods_name {
					font-size: 33rpx;
					line-height: 50rpx;
					padding-bottom: 15rpx;
					padding-top: 10rpx;
				}
			}
			
		}
	}
</style>
