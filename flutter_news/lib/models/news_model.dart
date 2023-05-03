class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? publishedAt;
  String? description;
  String? url;

  NewsData(
      {this.title,
      this.author,
      this.content,
      this.urlToImage,
      this.publishedAt,
      this.description,
      this.url});

  // I WILL USE DUMMY publishedAt

  static List<NewsData> breakingNewsData = [
    NewsData(
        author: "Jon Fingas",
        title: "Polar is bringing its fitness tracking tech to rival watches",
        description:
            "Polar isn't as big a name in fitness watches as competitors like Garmin, but it believes it has a way to extend its footprint: license its technology to those rivals. The company is now making 25 fitness algorithms available to some companies. \"Powered by Pol…",
        url:
            "https://www.engadget.com/polar-fitness-tracking-for-third-party-watches-100045709.html",
        urlToImage:
            "https://s.yimg.com/uu/api/res/1.2/o2SSCkbzDS9VujD3OLo_CQ--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-02/7005f030-b489-11ed-acbb-03f76293b3e3.cf.jpg",
        publishedAt: "2023-02-28T10:00:45Z",
        content:
            "Polar isn't as big a name in fitness watches as competitors like Garmin, but it believes it has a way to extend its footprint: license its technology to those rivals. The company is now making 25 fit… [+1647 chars]"),
    NewsData(
      author: "Sarah Fielding",
      title: "Amazon's palm-reading tech is being tested in Panera cafes",
      description:
          "Amazon One's palm-reading technology that can substitute for credit cards and tickets is now available for Panera customers. With this new partnership, the fast casual chain becomes the first national restaurant to let diners use their palm for payments and l…",
      url:
          "https://www.engadget.com/amazons-palm-reading-tech-tested-panera-cafes-133037398.html",
      urlToImage:
          "https://s.yimg.com/uu/api/res/1.2/8Emiu8ebkpmt8FK66lV7mQ--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-03/bbb9e710-c8b2-11ed-bf8f-994259819434.cf.jpg",
      publishedAt: "2023-03-22T13:30:37Z",
      content:
          "Amazon One's palm-reading technology that can substitute for credit cards and tickets is now available for Panera customers. With this new partnership, the fast casual chain becomes the first nationa… [+1390 chars]",
    ),
    NewsData(
        author: "Varsha Bansal",
        title: "SVB’s Collapse Is Causing Chaos in India’s Tech Sector",
        description:
            "The bank was popular among Indian founders who needed US accounts. But many have struggled to get their money out.",
        url:
            "https://www.wired.com/story/svbs-collapse-is-causing-chaos-in-indias-tech-sector/",
        urlToImage:
            "https://media.wired.com/photos/640f8d1cfcebf513b041528f/191:100/w_1280,c_limit/down_trend_biz_GettyImages-1017275652.jpg",
        publishedAt: "2023-03-13T21:00:00Z",
        content:
            "In case of India, the number of Indian startups [impacted] is definitely very high compared to other nations, except for US, but the capital would not be as much, says Smriti Tomar, founder and CEO o… [+2819 chars]"),
    NewsData(
        author: "Morgan Meaker",
        title:
            "Silicon Valley Bank’s Failure Deals a Blow to Europe’s Startups",
        description:
            "The US lender filled a niche for European tech companies that no one else could, or would.",
        url:
            "https://www.wired.com/story/silicon-valley-bank-europe-tech-startup/",
        urlToImage:
            "https://media.wired.com/photos/640f9dd4412651fa6ee14690/191:100/w_1280,c_limit/Euro_GettyImages-1409427454_biz.jpg",
        publishedAt: "2023-03-13T22:05:54Z",
        content:
            "Silicon Valley Bank's struggles started with a bad bet on long-dated US bonds. Rising interest rates meant that the value of those bonds fell. As depositors started to worry about the bank's balance … [+3167 chars]"),
    NewsData(
        author: "Alistair Charlton",
        title: "Qualcomm Is Poised to Dominate EVs Before Apple Gets a Chance",
        description:
            "Its digital chassis is an internet-connected platform for the whole car, and the tech giant has General Motors, Jeep, Mercedes, and many more on board.",
        url: "https://www.wired.com/story/electric-cars-qualcomm-apple/",
        urlToImage:
            "https://media.wired.com/photos/6414db30b19ad4e3186e05f5/191:100/w_1280,c_limit/Qualcomm-Could-Corner-the-EV-Market-Before-Apple-Gets-a-Look-in--Gear.jpg",
        publishedAt: "2023-03-18T14:00:00Z",
        content:
            "Perhaps crucially, Qualcomm also says its Digital Chassis allows automakers to own the in-vehicle experience [and] extend their brand and bring engaging consumer interactions into the vehicle. This w… [+3536 chars]"),
    NewsData(
        author: "Dell Cameron",
        title: "Senator Warner on the Restrict Act and a US TikTok Ban",
        description:
            "WIRED spoke with the coauthor of the Restrict Act, a bipartisan bill to crack down on tech from six \"hostile\" countries.",
        url:
            "https://www.wired.com/story/mark-warner-us-tiktok-ban-restrict-act/",
        urlToImage:
            "https://media.wired.com/photos/640fbaafdf4962e1cbeec9a3/191:100/w_1280,c_limit/TikTok-Ban-Security-GettyImages-1247870203.jpg",
        publishedAt: "2023-03-16T16:59:24Z",
        content:
            "In the future, it might be a new mobile game or an algorithm helping students study at home. It could be the latest graphics card or exercise bike, or an app that pairs families with puppies. With fe… [+4022 chars]"),
    NewsData(
        author: "Jeff Dunn",
        title:
            "Apple's AirPods Pro drop back to \$200, plus the rest of the week's best tech deals",
        description:
            "It's Friday, which means it's time for another roundup of notable discounts on good tech. Among the highlights, Apple's AirPods Pro are back down to \$200, tying the best price we've seen for the iPhone-friendly noise-cancelling earphones. Amazon has dropped t…",
        url:
            "https://www.engadget.com/apples-airpods-pro-drop-back-to-200-best-tech-deals-this-week-154133672.html",
        urlToImage:
            "https://s.yimg.com/uu/api/res/1.2/BAMvC3_.5TRpMJE4CGUJzA--~B/Zmk9ZmlsbDtoPTYzMDtweW9mZj0wO3c9MTIwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2022-09/9bd30380-39fd-11ed-9daf-94386034b5b5.cf.jpg",
        publishedAt: "2023-03-24T15:43:59Z",
        content:
            "All products recommended by Engadget are selected by our editorial team, independent of our parent company. Some of our stories include affiliate links. If you buy something through one of these link… [+11983 chars]"),
  ];
}
