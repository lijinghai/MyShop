<template>
	<view class="goods_list">
			<view class="goods_item" @click="navigator(item.id)" v-for="item in goods" :key="item.id">
			<image :src="item.imgUrl"></image>
			<view class="price">
				<text>￥{{item.sellPrice}}</text>
				<text>￥{{item.marketPrice}}</text>
			</view>
			<view class="goods_name">
				{{item.title}}
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		props: ['goods'],
		methods:{
			navigator (id) {
				this.$emit('goodsItemClick',id)
			}
		}
	}
</script>

<style lang="scss">
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
</style>
