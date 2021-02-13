<script>
	export default {
		onLaunch: function() {
			console.log('App Launch')
		},
		onShow: function() {
			console.log('App Show')
		},
		onHide: function() {
			console.log('App Hide')
		}
	}
</script>

<style>
	/*每个页面公共css */
@font-face {font-family: "iconfont";
  src: url('~@/static/font/iconfont.eot?t=1612939446879'); /* IE9 */
  src: url('~@/static/font/iconfont.eot?t=1612939446879#iefix') format('embedded-opentype'), /* IE6-IE8 */
  url('data:application/x-font-woff2;charset=utf-8;base64,d09GMgABAAAAAAkwAAsAAAAAEngAAAjkAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHEIGVgCDKgqYGJJIATYCJAMUCwwABCAFhG0HTxvTDiMRtnuSopL9M8E2ZnwYaIeov2y5pvHF/Tm8IRhJ13REmzZ7tnt3iEYhQtSMGmmdpGbUSc2ckorLiymHa2WyYCYPlKRMsl1VjZKIszaxtFDgA1JlVsfGlOf/3d23fUtVKlKHoxShIYQmW5zzBPLCRF2O5OzJoy+kvGWAQ2uuikjWWV5oEInlbXp/E/89phaXSKJ5IYlJQhJtCxVCiCyyjf1WkHVxdGtsgAAIPIRCS35pLRAMXoxg3Tmosw8QhxITUI8QCcfwWYBuCJHWQ90BgEXa36MfokMAKGwHPq5KU15/yPx82edraIvDYidtAZEcBv5ZADSAUAAMQAeT7g+0IQrVgMBaykgEQASKAknNrPx8jcNhFK3gVQULBAKhKXRy/7wBPJBAcaaYaTJCkgPSSAN4o5IW5EBTMgXeQAGsslUAkAaYmahe4KGvRinJBNOKSBCPsE7nXowwZzkQa5HUxUXnXmZQUb5yJKV6nc7lw3adwYuiUtzcdfgfVRTLEV/XM9Dtbur3t/R6mzudzZCWVCUuy+I+EG/exW9fbyksdDyfGvPZhj6b/3SenkgmWcasYNiq0+wWWLW1YDpYfijAZll0CAlDiXMcy+swji2AoWbgMkpqhAS9iLU6aghBxLqhG0E8K8TPn14Ao6V/etjQycYUHJ6SlRfA496q751ZIItopygRolyezPdZvCc+8KI5HR60D2lNt+mJAakTQwYVL0zdbu0ZEN2u6vfn1oZ4bxkQ4RDop9nsIr7COP7cC9GmMhe7S7IxzEbs6IC0GMeOEDkKZSjSegLQoDJCD4K0vlvAWhZCII4brMU+eAaK5IddogzyiF97a4kx1COhVxWQGKnzkn0VluPv2ksdB5vxLU7RTSaZgA5w+37R687GLYamy6orC+8+NfKJViHI+k14FwijXGyl3t+gRxphKX0+TydI9I2RqXG2xdZtetrhcNuL7MLdeG0CUms8gKdyAg+275YIbBn7caWr0La0wAaevp/kpR/mk3wrj0AnmiOqRD2t2eYytGu+COvZ4k3P3k31s483hp7Xp25xBTJoGnwGYOPw5kYPmxP1jG5Kq5vxfnwKUPJefsQYkNBUU7DzCDi411yh3k1N/6h/srFEveOVmdd7PJw2TgyMdg4JyQ3/EyfQkZEp3lEPYt450zsBLOsZ5JtSgy1jYkQ5jGViMmFGvnuW49hCV5IiB7ypINI1tpEOFirYP9gjNh/475C3UF1Xdx0SqO5upCq6u6wdXV30miAwGcjidEWg85gx4WI2bt07auYFfVweY9jlZNyxa8X2LufiljhOnxbBGZtPxM9a/sAjPp+JtuGu4zdOnLCQlrZ4HJbu6Yznxchicza7GaJo7wVsZf86m5GLa/DlgkPdHSHevCJpxGuMEnMP11hqXk0keA0pjTDK1+ApoxrRvm/0Pot9aVREK0WiVBuRbbgssgybIKuNQ865yhcs0Isj0ttuUv0DJXWUkYRjG+R8KL02c0BpbcWDBzUVrcM0+1Qxes1ejTt/Bt7xOiNDI8HiwgtfpnwoeVGlM+8jfpNZ47kPIZHzypse2G8qscG6sxdjoxubY0wUUTfTqHro0GpUhQ4hlphoykIiwmjlaCbTR5NQyY5OMriaWwqGFf78s8VV75s3KgwVE5DJjAqM5hk2YemxmJwjQm2UKze2mm5iLj4k1i1Ux3IvEbTsEXr5Wt4ujKiXzajsZAixW0YELbfS6fWaw/eq7Hx3UIvFTvxT/Hm7pd5i5xelLjLK6hYPBafEEvwSvojv5TslKjh4UUSRCVm3KDigTjDxsoAWeRGpJb3bPhxDGS1gYfba3xcPjtd/WLtndP/+8lrIgj1rPwQXTbicuG1BjWumZOHTj8PLrpqn79x24eHjicXq4iPHwjrh/HA38Tunt07vnL5v+t1NvnGhfuFGmHnZoiNr66P6ioi6GaHygQPLURmiHtcHJa3YIioHGOpAfBaxSY6eoC73Z/98sPaCJCaGNmzljDPHjB5l5gqb/Fhdqp7Dwmct/Udd0PnlMIbt2Lx8zswVZlzY4s+GhoVzOFmRqzFsFrwyGEUPy8XkWzmuJynOjeWsBW4u0snD3IdO8vnIRTJM3zR0l+cDpWywTNpaRWxKu6X6g5WYsH7wJGdUZ/5qp6s5DFU+Q6aUfsJ0RxcWxujc+b2qvby4ObqyKsLi4pBZIfoO3TJ3LjM/LEoRqc13tHfF/7ZLRzovVYlvtW8214kpReaHy01zfkafD+OeBgiSHRk79EKgoD/KJYKTXpG5Ahpnpc3a/+0H/Z+//UZSiGzBw/mI4x0f/VDqW6FPi2SU89jKnDyrkZ2nYV1D3JnK1f5vY2MOi95RlHI9V1ljsmEuP3/45IdsuRmuxiuWP9SPxTzvevPV02W4tYwLN4XJ/D/KV1HN8OE19B0aPhzVWBH/pnWVLZwiFb7Tvv3jjY/fYd4UanKWmAsHoIeNU8qxlRM5Ky7PxeN0mssNPppjrVhJUZ7sOCwEHvCkqSyK9uQctJKbc0GRgAudKTf4JxN/ONe8T7nXnGP5l5tss1yEu9q7mjvaOzAO+CWOF/RF2lcrelMGIKf+cOYfh6U/17ZgjvzNgA556m9E3Ffde7N2y0k65DhegCPhN5dAEz/OBPIS8+TzKrbuRyX8PsMmGZTBUxQAQRgHcAA/oPIuGahFEz/QUGsh0IfpgUEjfPOZ4lAGSxTL4BAZDEGIAv8itW6goeIBINgsjoEoHGJQZM6LaFbxXREDxW8ZLCffCTmoDs0QbP7nEuLZNfvp1iDrUAKfwQoqlajpTvr6N+o+sIbwD47+2LSWSkij5D3/whKbJNy0g866ToFqqIAn5wJDIKgacii6yMBclcexuriNBBWLk5sGYjqFUwLczG0JpKTu7pw8v/+GtF7ANAHHPrj/UKNljQepSILIf4ESdWxRtrYGWqYjlALSVIMUBnxSCgVhhoCKbc1BQidiIkxVcjG5TmFBlD0s+jHx93Ain3KYlp7KlOGwUj/2ktlta3rX7ybLSBIebZOs1NLKisUC') format('woff2'),
  url('~@/static/font/iconfont.woff?t=1612939446879') format('woff'),
  url('~@/static/font/iconfont.ttf?t=1612939446879') format('truetype'), /* chrome, firefox, opera, Safari, Android, iOS 4.2+ */
  url('~@/static/font/iconfont.svg?t=1612939446879#iconfont') format('svg'); /* iOS 4.1- */
}

.iconfont {
  font-family: "iconfont" !important;
  font-size: 16px;
  font-style: normal;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.icon-gouwudai:before {
  content: "\e693";
}

.icon-shuju:before {
  content: "\e695";
}

.icon-xiaoxi:before {
  content: "\e696";
}

.icon-shangdian:before {
  content: "\e699";
}


	
	
</style>
