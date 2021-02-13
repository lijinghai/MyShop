<template>
	<view class="goods_detail">
		<!-- 轮播图 -->
		<swiper indicator-dots="true">
			<swiper-item v-for="item in swipers" :key="item.id">
				<image :src="item.src1"></image>
				<!-- <image :src="item.src2"></image> -->
			</swiper-item>
			
			<swiper-item v-for="item in swipers" :key="item.id+1">
				<image :src="item.src2"></image>
			</swiper-item>
		</swiper>
		
		<view class="box1">
			<view class="price">
				<text>￥{{info.sellPrice}}</text>
				<text>￥{{info.marketPrice}}</text>
			</view>
			<view class="goods_name">{{info.title}}</view>
		</view>
		
		<view class="line"></view>
		
		<view class="box2">
			<view>货号:{{info.goodNo}}</view>
			<view>库存:{{info.stockQuantity}}</view>
		</view>
		<view class="line"></view>
		
		<view class="box3">
			<view class="title">详情介绍</view>
			<view class="content">
				<rich-text :nodes="content"></rich-text>
			</view>
		</view>
		
		<view class="goods_nav">
			<uni-goods-nav :fill="true"  :options="options" :buttonGroup="buttonGroup"  @click="onClick" @buttonClick="buttonClick" />
		</view>
		
	</view>
</template>

<script>
	import uniGoodsNav from '../../uni_modules/uni-goods-nav/components/uni-goods-nav/uni-goods-nav.vue'
	export default {
		data() {
			return {
				id: 0,
				swipers: [],
				info: {},
				content: '',
				  options: [{
				            icon: 'headphones',
				            text: '客服'
				        }, {
				            icon: 'shop',
				            text: '店铺',
				            info: 2,
				            infoBackgroundColor:'#007aff',
				            infoColor:"red"
				        }, {
				            icon: 'cart',
				            text: '购物车',
				            info: 2
				        }],
				       buttonGroup: [{
				              text: '加入购物车',
				              backgroundColor: '#ff0000',
				              color: '#fff'
				            },
				            {
				              text: '立即购买',
				              backgroundColor: '#ffa200',
				              color: '#fff'
				            }
				            ]
			}
		},
		methods: {
			async getSwipers () {
				const res = await this.$myRequest({
					url: '/imagesplus/%7Bid%7D?limit=3&page=1&sort=1&id='+this.id
				})
				console.log(res)
				this.swipers = res.data.data.items
			},
			async getDetailInfo() {
				const res= await this.$myRequest({
					url: '/info/%7Bid%7D?limit=1&page=1&sort=1&id='+this.id
				})
				console.log(res)
				this.info = res.data.data.items[0]
			},
			async getDetailContent () {
				const res = await this.$myRequest({
					url: '/desc1/%7Bid%7D?limit=1&page=1&sort=1&id='+this.id
				})
				console.log(res)
				this.content = res.data.data.items[0].content
			},
			onClick (e) {
			        uni.showToast({
			          title: `点击${e.content.text}`,
			          icon: 'none'
			        })
			      },
			      buttonClick (e) {
			        console.log(e)
			        this.options[2].info++
			      }
		},
		onLoad (options) {
			console.log(options)
			this.id = options.id
			this.getSwipers()
			this.getDetailInfo()
			this.getDetailContent()
		},
		components: {uniGoodsNav}
	}
</script>

<style lang="scss"> 
.goods_detail {
	swiper {
		height: 700rpx;
		image {
			width: 100%;
			height: 100%;
		}
	}
	.box1 {
		padding: 10px;
		.price {
			font-size: 35rpx;
			color: $shop-color;
			line-height: 80rpx;
			text:nth-child(2) {
				color: #ccc;
				font-size: 28rpx;
				text-decoration: line-through;
				margin-left: 20rpx;
			}
		}
		.goods_name {
			font-size: 32rpx;
			line-height: 60rpx;
		}
	}
	.box2 {
		padding: 0 10px;
		font-size: 32rpx;
		line-height: 70rpx;
	}
	.box3 {
		padding: 50px;
		.title{
			font-size: 32rpx;
			padding: 10px;
			border-bottom: 1px solid #eee;
			line-height: 70rpx;
		}
		.content {
			padding: 10px;
			font-size: 28rpx;
			color: #333;
			line-height: 50rpx;
		}
	}
}
.line {
	height: 10rpx;
	width: 750rpx;
	background: #eee;
}

.gomeImgLoad {
	width: 750rpx;
	height: auto;
}
.goods_nav {
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
