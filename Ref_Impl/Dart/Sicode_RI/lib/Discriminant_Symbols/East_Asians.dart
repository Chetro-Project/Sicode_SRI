class Kanji{
  //const decim.
  Map<Int, String> regionals_SymNnem = {
    1:"CT",
    2:"CG",
    3:"CS",
    5:"JT",
    6:"JN",
    8:"KR",
    9:"VN",
    11:"HK",
    12:"AM",
    15:"DS",
  };
  Map<String, Int> regionals_NnemSym = {
    "CT":1,
    "CG":2,
    "CS":3,
    "JT":5,
    "JN":6,
    "KR":8,
    "VN":9,
    "HK":11,
    "AM":12,
    "DS":15,
  };
}
class Kana{
  //const decim.
  Map<String, Int> kana_NnemSym = {
    "H":1,
    "K",2,
    "C":1,
    "Y":3,
    "L":1,
    "V":6,
    "S":11,
  };
  Map<Int,String> kana_SymNnem_LVS = {
    1:"L",
    6:"V",
    11:"S",
  };
  Map<Int,String> kana_ModNnem_HKCY = {
    3:"HC",
    0:"HY",
    4:"KC",
    1:"KY",
  };

  String symNnem(Int val){
    return kana_ModNnem_HKCY["${(val + 1) % 5}"] + kana_SymNnem_LVS["${(((val % 5) + 3) % 5) - 1}"];
  }
  Int nnemSym(String nnem){
    return nnem.split().map((char) => kana_NnemSym["char"]).reduce((curr, next) => curr + next) - 1;
  }
}