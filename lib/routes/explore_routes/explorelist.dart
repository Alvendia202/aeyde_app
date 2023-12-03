class ExploreInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

static var length = explorelist.length; 

  ExploreInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List <ExploreInfo> explorelist = [
  ExploreInfo(1,
      name: 'New in',
      iconImage: 'assets/images/new.png',
      description:
          "A shoe is not only a design, but it's a part of your body language, the way you walk. The way you're going to move is quite dictated by your shoes",
      images: [
        'https://www.aeyde.com/cdn/shop/files/AEYDE-WAYNE-CALF-LEATHER-BLACK-6_x1024.jpg?v=1688554547',
        'https://www.aeyde.com/cdn/shop/files/AEYDE-ALINE-PATENT-CALF-LEATHER-BLACK-6_9b3ae683-700a-46c4-9d96-02a34dd55bae_x560.jpg?v=1687165834',
        'https://www.net-a-porter.com/variants/images/1647597292511819/fr/w2000_q60.jpg',
      ]),
  ExploreInfo(2,
      name: 'Magazine',
      iconImage: 'assets/images/mag.png',
      description:
          "You can't judge a person by their shoes, but you can judge them by how well they fit. It's not the size of the shoe that matters, but the fit.",
      images: [
        'https://images.milledcdn.com/2023-05-04/31om64Sl4MHi70s2/c@2x.jpg',
        'https://images.milledcdn.com/2023-03-16/B8TrunK2faklex-1/c@2x.jpg',
        'https://images.milledcdn.com/2023-03-23/a5so3NaD5qQghAsd/c@2x.jpg',
        'https://images.milledcdn.com/2023-09-14/ZAX4-U7yoYJYbkDu/c@2x.jpg'
      ]),
  ExploreInfo(3,
      name: 'Collection',
      iconImage: 'assets/images/col.png',
      description:
          "Fashion is part of the daily air and it changes all the time, with all the events. You can even see the approaching of a revolution in clothes. You can see and feel everything in clothes.",
      images: [
        'https://assets.smallable.com/default/0001/72/thumb_71154_default_cms_listing_small.jpeg',
        'https://i.pinimg.com/1200x/c5/0f/12/c50f12875ec5484e97698630179eb947.jpg',
        'https://m.media-amazon.com/images/G/01/Shopbop/p/prod/products/aeyde/aeyde3006819669/aeyde3006819669_1696267521869_2-0._QL90_UX282_.jpg',
        'https://cdna.lystit.com/520/650/n/photos/matchesfashion/c9192e0f/aeyde-brown-Leandra-75-Leather-Ankle-Boots.jpeg',
      ]),
  ExploreInfo(4,
      name: 'Care',
      iconImage: 'assets/images/care.png',
      description:
          "Don't be into trends. Don't make fashion own you, but you decide what you are, what you want to express by the way you dress and the way to live. What you wear is how you present yourself to the world, especially today, when human contacts are so quick. Fashion is instant language.",
      images: [
        'https://i.pinimg.com/736x/09/10/57/091057a2f75e140fa8a1f00a35b9362a.jpg',
        'https://www.net-a-porter.com/variants/images/1647597305660900/fr/w2000_q60.jpg',
        'https://www.net-a-porter.com/variants/images/1647597305660898/fr/w2000_q60.jpg',
      ]),
  ExploreInfo(5,
      name: 'About',
      iconImage: 'assets/images/about.png',
      description:
          "Aeyde is a Berlin-based footwear and accessories house founded in 2015. Aeyde founder Luisa Dames envisioned a more understated version of luxury, and set out to democratize modern design and enduring quality. Her intention was to challenge preconceived notions of luxury by focusing on transparent pricing, sustainable sourcing, slow consumption, and minimalistic design.",
      images: [
        'https://www.aeyde.com/cdn/shop/files/1_5_286d44c2-9048-43e7-bfdf-5608aeccfcb1_800x.jpg?v=1655197255',
        'https://images.milledcdn.com/2023-03-23/a5so3NaD5qQghAsd/c@2x.jpg',
        'https://images.milledcdn.com/2023-09-14/ZAX4-U7yoYJYbkDu/c@2x.jpg',
      ]),
];