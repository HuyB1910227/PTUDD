class DescriptionPlace {
  final String title;
  final String image;
  final String description;

  DescriptionPlace(
    this.title,
    this.image,
    this.description,
  );
}

class Place {
  final String name;
  final String imageUrl;
  final int numOfFavor;
  final List<DescriptionPlace> descriptions;

  Place(
    this.name,
    this.imageUrl,
    this.numOfFavor,
    this.descriptions,
  );

  static List<Place> samples = [
    Place("Phú Quốc", "assets/places/PhuQuoc.jpeg", 1000000, [
      DescriptionPlace("Đặc điểm địa lý", "assets/places/PhuQuoc.jpeg",
          "Năm 2006, Khu dự trữ sinh quyển ven biển và biển đảo Kiên Giang, bao gồm cả huyện Phú Quốc được UNESCO công nhận là Khu dự trữ sinh quyển thế giới đã khiến hòn đảo này dần trở thành cái tên quen thuộc trên bản đồ du lịch quốc tế. Với 150km đường bờ biển, Phú Quốc sở hữu nhiều bãi biển đẹp trải dài từ phía bắc đến phía nam. Đến đây, du khách sẽ bị cuốn hút trước vẻ đẹp đậm chất hoang sơ với sóng êm, gió lặng tại bãi Sao hay không gian trầm mặc kín đáo, biển xanh cát trắng tại bãi Khem."),
      DescriptionPlace("Cảnh quản thiên nhiên", "assets/places/PhuQuoc2.jpg",
          "Đặc biệt, với cảnh quan nên thơ, trữ tình, cát vàng tự nhiên, rừng già đại thụ lan tận sát biển cùng hệ sinh thái rừng ngập mặn tuyệt đẹp tại các cửa sông nhỏ, bãi Dài đứng đầu danh sách các bãi biển tiềm ẩn được các hãng thông tấn cũng như du khách nước ngoài đánh giá và bình chọn là một trong 5 bãi biển đẹp nhất thế giới."),
      DescriptionPlace("Giải trí", "assets/places/PhuQuoc3.jpeg",
          "Ngoài biển xanh, cát trắng, nắng vàng, Phú Quốc còn có rất nhiều khu vui chơi giải trí cùng những tiện ích hấp dẫn mà du khách không nên bỏ lỡ cơ hội khám phá và trải nghiệm, trong đó, Vinpearl Phú Quốc chính là điểm nhấn ấn tượng được nhiều du khách yêu mến và lựa chọn. Không chỉ cung cấp đầy đủ các phòng khách sạn, villas, condotel nghỉ dưỡng chuẩn 5 sao sang trọng, Vinpearl Phú Quốc còn làm hài lòng khách lưu trú bởi hàng loạt các dịch vụ trọn gói tại các thương hiệu do Vingroup phát triển như: mua sắm (Vincom), y tế (Vinmec), Spa (Vincharm), thể thao (sân gôn Vinpearl)."),
    ])
  ];
}
