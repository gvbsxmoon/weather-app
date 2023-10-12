String weatherDescription(int wmoValue) {
    switch(wmoValue) {
    case 0:
      return "Beach day!"; //0
    case 1:
    case 2:
    case 3:
      return "Slightly cloudy"; //1
    case 45:
    case 48:
      return "Frosty fog"; //45-48
    case 51:
    case 53:
    case 55:
      return "Sprinkle time"; //3
    case 56:
    case 57:
      return "Icy sprinkle time"; //3
    case 61:
    case 63:
    case 65:
      return "Downpour alert!"; //3
    case 66:
    case 67:
      return "Icy rain"; //3
    case 71:
    case 73:
    case 75:
      return "Flurries incoming"; //6
    case 77:
      return "Santa was here"; //6
    case 80:
    case 81:
    case 82:
      return "Rainy showers"; //3
    case 85:
    case 86:
      return "Snowy showers"; //6
    case 95:
      return "Thunder struck"; //9
    case 96:
    case 99:
      return "Hailstorm havoc"; //9
    default:
      return "Unknown weather";
  }
}

String weatherLottie(int wmoValue, bool isDay) {
  String daytime = isDay ? "day" : "night";

  switch(wmoValue) {
    case 0:
      return "assets/lottie/$daytime/0.json"; //0
    case 1:
    case 2:
    case 3:
      return "assets/lottie/$daytime/1.json"; //1
    case 45:
    case 48:
      return "assets/lottie/$daytime/2.json"; //45-48
    case 51:
    case 53:
    case 55:
      return "assets/lottie/$daytime/3.json"; //3
    case 56:
    case 57:
      return "assets/lottie/$daytime/3.json"; //3
    case 61:
    case 63:
    case 65:
      return "assets/lottie/$daytime/3.json"; //3
    case 66:
    case 67:
      return "assets/lottie/$daytime/3.json"; //3
    case 71:
    case 73:
    case 75:
      return "assets/lottie/$daytime/6.json"; //6
    case 77:
      return "assets/lottie/$daytime/6.json"; //6
    case 80:
    case 81:
    case 82:
      return "assets/lottie/$daytime/3.json"; //3
    case 85:
    case 86:
      return "assets/lottie/$daytime/6.json"; //6
    case 95:
      return "assets/lottie/$daytime/9.json"; //9
    case 96:
    case 99:
      return "assets/lottie/$daytime/9.json"; //9
    default:
      return "assets/lottie/mist.json";
  }
}