<template>
	<view class="goods_list">
		<goods-list @goodsItemClick="goGoodsDetatil" :goods="goods"></goods-list>
		<view class="isOver" v-if="flag">----我是有底线的-----</view>
	</view>
</template>

<script>
	// 导入组件
	import goodsList from '../../components/goods-list/goods-list.vue'
	export default {
		data() {
			return {
				page: 1,
				goods:[],
				flag: false
			}
		},
		// 注册
		components: {"goods-list": goodsList},
		methods: {
			// 获取商品列表的数据
			async getGoodsList(callBack) {
				const res = await this.$myRequest({
					url: '/goods?limit=10&sort=1&page='+this.page
					// /goods?limit=6+'&page='+this.page+'&sort=1''
					// ?pageindex='+this.pageindex+''
				})
				console.log(res)
				this.goods = [...this.goods,...res.data.data.items]
				callBack && callBack()
			},
			// 导航到商品详情页
			goGoodsDetatil (id) {
				uni.navigateTo({
					url: '/pages/goods-detail/goods-detail?id='+id
				})
			}
		},
		onLoad() {
			this.getGoodsList()
		},
		// 监听xia拉刷新
		onPullDownRefresh() {
			console.log('下拉刷新了')
			this.page =1;
			this.goods =[]
			this.flag = false
			// 设置下拉刷新的时间
			setTimeout(()=>{
				this.getGoodsList(()=>{
					uni.stopPullDownRefresh()
				})
			},500)
		},
		// 监听触底事件
		onReachBottom() {
			// 判断是否有下一页数据
			if(this.goods.length<this.page*10) return this.flag= true
			console.log('触底了')
			this.page++
			this.getGoodsList()
		}
	}
</script>

<style lang="scss">
	.goods_list {
		background: #eee;
	}
	.isOver {
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		// background: #fff;
		font-size: 28rpx;
	}
</style>
