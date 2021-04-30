let fromRGB = fun l =>
  let res = lists.map (fun x => strings.fromNum (x / 255)) l in 
  let res = lists.map (fun s =>
    if strings.length s <= 4 then
      s
    else
      strings.substring s 0 4) res in
  strings.join res "," in

m#"
  \definecolor{yellow-creme-brulee}{rgb}{#{fromRGB [254,224,128]}}
  \definecolor{pink-froly}{rgb}{#{fromRGB [255,59,90]}}
  \definecolor{tuft-bush}{rgb}{#{fromRGB [254,207,177]}}
  \definecolor{blue-portage}{rgb}{#{fromRGB [83,115,207]}}
  \definecolor{blue-marguerite}{rgb}{#{fromRGB [77,34,168]}}
  \definecolor{blue-oxford}{rgb}{#{fromRGB [56,69,88]}}
  \definecolor{green-de-york}{rgb}{#{fromRGB [85,193,113]}}
  \definecolor{green-pea}{rgb}{#{fromRGB [0,86,65]}}
  \definecolor{orange-vivid-tangerine}{rgb}{#{fromRGB [252,120,81]}}
  \definecolor{dark-grey}{rgb}{#{fromRGB [137,138,140]}}
  \definecolor{bright-grey}{rgb}{#{fromRGB [218,217,215]}}
"#m
