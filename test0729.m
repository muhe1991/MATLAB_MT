% clear all;
% clc;
F=[0 0.00210093 0.0438045 0.000180181 1.65194e-005 0.00729843 0.0034919 0.000102419 0.000581225 3.70238e-005 1.06847e-005 4.26145 0.000262915 0.000105518 3.40835e-005 0.000468646 0.00511164 0.000133063 4.75972e-006 1.56256e-005 0.0396249 1.1038e-005 1.3663e-005 3.99852e-006 4.9201e-005 0.00439234 0.000280128 8.16687e-005 3.02989e-005 4.01141e-005 0.00311635 9.7391e-006 6.67614e-006 2.01002e-005 1.35431e-005 0.000216139 1.42055e-005 0.000386532 0.00015356 0.000208328 6.12156e-005 0.00220409 6.58883e-005 6.21478e-005 0.0149356 0.00311963 4.06615e-005 0.00212816 1.5077e-006 0.0055626 ;
0.0184954 0 0.00549247 0.000846868 1.19539e-005 0.0244893 0.000492342 0.000899105 0.00336274 0.000321474 8.40268e-005 0.00604646 0.00660511 2.63837e-005 2.50265e-005 0.00600151 0.000227327 0.000909426 7.07685e-006 4.63169e-005 0.00330736 1.4666e-005 7.77177e-005 2.89038e-006 0.000270588 0.00234261 0.00168832 4.84908e-005 0.000183211 2.24824e-005 0.00413205 1.83886e-005 2.75653e-006 0.00012975 7.40652e-006 0.000886424 9.10557e-005 6.21314e-005 5.70016e-005 5.44645e-005 0.00024702 0.00245885 3.65156e-005 0.000241953 0.000427467 0.00421536 0.000189278 0.000450223 1.74422e-006 0.00399997 ;
0.387459 0.002675 0 0.000220967 3.53125e-005 0.0377108 0.0181849 0.00022249 0.00214975 6.19808e-005 1.82608e-005 0.671273 0.000565095 0.000483688 8.2021e-005 0.000828765 0.00266292 0.00018372 1.17828e-005 3.37587e-005 0.0917101 3.31651e-005 1.93507e-005 9.17526e-006 0.000127741 0.0324097 0.000543358 6.79149e-005 6.11821e-005 0.000132943 0.0281794 2.53176e-005 8.19682e-006 1.64633e-005 2.31923e-005 0.000555992 2.02635e-005 0.000739327 0.00142183 0.000918578 0.000141525 0.0250008 0.000227534 0.00011007 0.0230215 0.016643 0.000103217 0.048505 3.47967e-006 0.00293047 ;
0.000130636 2.24511e-005 1.3843e-005 0 1.04575e-006 0.000110991 7.42824e-006 3.51462e-005 2.46151e-006 0.000101576 3.01152e-005 2.33138e-005 2.13521e-005 5.48839e-007 1.88412e-006 0.000361819 3.03727e-006 0.0099415 8.76131e-007 1.16738e-005 4.90178e-005 1.0161e-006 0.00210535 2.29222e-007 9.80519e-006 4.04175e-005 0.000377344 4.37182e-006 2.90134e-005 9.20162e-007 2.47688e-005 2.04451e-006 1.80261e-007 1.49974e-005 5.84147e-007 5.65397e-005 0.000922023 1.46508e-006 8.37359e-007 1.18319e-006 3.02406e-005 1.1899e-005 1.41793e-006 0.000278264 4.07413e-006 7.67225e-005 1.05762e-005 4.25195e-006 2.17974e-007 0.00016973 ;
9.90613e-006 2.09545e-007 7.32327e-007 4.75279e-007 0 3.61997e-006 2.58277e-006 1.71299e-007 5.54688e-008 7.57088e-008 2.45354e-008 1.41283e-006 1.45572e-007 3.76552e-007 0.000438921 6.34769e-007 3.79817e-007 2.99252e-007 3.48658e-007 1.66332e-007 1.2872e-005 4.67938e-007 3.93707e-008 0.000329422 1.12718e-007 1.28672e-005 8.81496e-007 2.49198e-007 9.19402e-008 3.77351e-006 1.51193e-006 2.41217e-007 1.19607e-007 1.25627e-008 6.8352e-006 8.37778e-007 3.60131e-008 7.83204e-007 2.51978e-007 8.96021e-007 3.05538e-007 7.04312e-007 4.58563e-006 4.02009e-007 5.58142e-007 9.07145e-006 1.29532e-007 7.50209e-007 6.20679e-007 2.49461e-006; 
0.0327921 0.0358305 0.0527617 0.000564776 3.02698e-005 0 0.00202765 0.00204101 0.855036 0.000322453 9.22825e-005 0.0154801 0.0143634 0.000113253 7.2028e-005 0.00615867 0.000403263 0.000637186 2.14716e-005 0.000108919 0.00971227 5.98556e-005 6.25955e-005 7.90065e-006 0.00111829 0.0193786 0.00280033 5.00433e-005 0.000339528 8.79772e-005 0.232893 6.18915e-005 4.55629e-006 3.57549e-005 1.5502e-005 0.00329365 7.05382e-005 0.000161717 0.000442869 0.000230557 0.000678822 0.1697 0.000148354 0.000356714 0.00117798 0.0509716 0.000693618 0.00375797 4.75293e-006 0.0024196 ;
0.129276 0.000408625 0.00539152 0.000197301 0.000227322 0.00698567 0 0.000114438 0.000153231 3.9672e-005 1.21667e-005 0.0155623 0.00016587 0.0908752 0.000530151 0.000425722 0.00634815 0.000138702 2.49533e-005 3.78652e-005 3.56824 6.9104e-005 1.59986e-005 6.06867e-005 7.18332e-005 0.061228 0.000390177 0.000159912 4.25324e-005 0.00141397 0.00440449 3.86243e-005 5.61676e-005 1.04086e-005 0.000196332 0.000401022 1.5762e-005 0.115479 0.00309427 0.158351 0.00011641 0.00248017 0.00238585 0.000110134 0.0244044 0.0118058 6.82344e-005 0.0168964 1.06617e-005 0.00309434 ;
0.0207233 0.00758071 0.00457241 0.0156644 0.000171334 0.136026 0.00177121 0 0.001344 0.140753 0.0587413 0.00489658 0.0413342 0.000141121 0.000389315 1.62871 0.000414211 0.039723 0.000377303 0.0177751 0.00915626 0.000627221 0.00436647 4.30794e-005 0.365391 0.0191144 22.7501 0.000196115 16.8476 0.000262395 0.02008 0.00181003 1.54973e-005 0.000225854 6.71599e-005 1.39611 0.00551031 0.000239515 0.000333892 0.000302674 0.734076 0.00826327 0.000419486 0.0722738 0.000767932 0.0802393 0.480157 0.00151079 5.33575e-005 0.00698146 ;
0.184657 0.18066 0.295238 0.0032164 0.000177742 23.6052 0.0118774 0.0119583 0 0.00185366 0.0005319 0.0864595 0.0810794 0.000668875 0.000424814 0.0352999 0.00229462 0.00363481 0.000127544 0.000642923 0.0561612 0.000359218 0.000358293 4.65102e-005 0.0067105 0.118119 0.0163337 0.00028536 0.00198645 0.000522991 1.58611 0.000369513 2.62816e-005 0.000199526 9.02647e-005 0.0197415 0.000403367 0.000937931 0.00267548 0.0013619 0.00402703 1.14619 0.000882927 0.0020754 0.00674128 0.320594 0.00415208 0.0224488 2.80793e-005 0.0136006 ;
0.0364301 0.0240652 0.00734669 0.0578088 0.000173745 0.140675 0.00226601 0.566929 0.00246215 0 0.417069 0.0085528 0.119227 0.000163173 0.000368167 911.424 0.000688031 0.259 0.000225018 0.00491265 0.0130128 0.00036394 0.0181248 4.20093e-005 0.0346427 0.0179622 1.68048 0.000359604 0.153864 0.00024814 0.0206075 0.000776027 2.25032e-005 0.000986972 8.18415e-005 0.105244 0.0301085 0.000326913 0.000349213 0.000347352 0.043247 0.00937184 0.000395234 0.0498003 0.00118742 0.053991 0.0266258 0.00182541 4.14367e-005 0.0163826 ;
0.0425299 0.0219259 0.00843355 0.0730675 0.00024879 0.171667 0.00287913 1.16501 0.0026219 19.5352 0 0.00982659 0.104005 0.000213866 0.000531398 159.358 0.00082759 0.336278 0.000368714 0.0103736 0.0162001 0.000576027 0.0272924 6.03888e-005 0.0657361 0.024197 8.43455 0.000447942 0.693583 0.000347875 0.0258859 0.00134792 2.93538e-005 0.000971688 0.000111946 0.220409 0.0440817 0.000416918 0.000458899 0.000456698 0.105061 0.0115108 0.000553112 0.113535 0.00143368 0.0766249 0.0564131 0.00229947 6.41515e-005 0.0187587 ;
2.35199 0.0161488 11.7393 0.0014709 0.000256767 0.261173 0.152456 0.00150331 0.0130457 0.000414988 0.000122652 0 0.00369841 0.00394034 0.000602478 0.00551383 0.0178363 0.00122341 8.47647e-005 0.00023547 0.698061 0.000242921 0.000129528 6.71423e-005 0.000879972 0.268074 0.00369475 0.000457082 0.000416728 0.00101544 0.209938 0.000181241 5.74799e-005 0.000105921 0.000166541 0.00386994 0.000135371 0.00550568 0.0123744 0.00743758 0.000981294 0.185785 0.00174565 0.00075318 0.163257 0.125779 0.000714886 0.503822 2.51043e-005 0.0189239 ;
0.000605019 0.00112854 0.00022983 9.78768e-005 1.59813e-006 0.013724 3.89e-005 0.00356976 0.00018169 0.000180287 4.82289e-005 0.000180979 0 2.62471e-006 3.65386e-006 0.00813037 9.7069e-006 0.000170616 1.80354e-006 1.98714e-005 0.000204156 4.02925e-006 1.52588e-005 4.05291e-007 0.000668919 0.000380854 0.00134701 2.71815e-006 0.000179293 3.24504e-006 0.00100625 6.36382e-006 2.05851e-007 4.06887e-006 7.48453e-007 0.0010128 1.9169e-005 4.40843e-006 7.39889e-006 5.50431e-006 0.00019986 0.000448486 5.31096e-006 8.12604e-005 2.04453e-005 0.00148965 0.000276978 4.27522e-005 3.3524e-007 0.000129283 ;
7.26728 0.0415891 0.974766 0.0128306 0.00875834 1.09191 152.184 0.0109444 0.0211046 0.00322886 0.000987951 1.60827 0.0174516 0 0.023111 0.0374208 0.177952 0.00997585 0.00177629 0.00298664 34.7981 0.00587376 0.00112889 0.00248165 0.00735303 22.0599 0.0328404 0.00579938 0.00367775 0.076692 0.938096 0.00316023 0.00132387 0.000673288 0.00523969 0.038974 0.00113725 0.34532 2.89563 4.6111 0.0103546 0.553362 0.140614 0.00807582 1.23988 2.00329 0.00669771 27.8424 0.000624178 0.14509 ;
0.0017879 4.09015e-005 0.000147219 8.44063e-005 0.303216 0.00079031 0.000518247 3.58365e-005 1.13201e-005 1.49577e-005 4.86797e-006 0.000267869 2.98163e-005 8.12336e-005 0 0.000127288 6.52727e-005 5.58334e-005 9.90595e-005 3.63877e-005 0.00236684 0.000147279 7.32686e-006 5.30041 2.4663e-005 0.00320617 0.00018114 3.5347e-005 1.91049e-005 0.00128881 0.000337067 6.24985e-005 1.44103e-005 2.20113e-006 0.000506877 0.000187435 6.75542e-006 0.000134466 5.91421e-005 0.0001944 6.69741e-005 0.000154311 0.00151069 7.96305e-005 0.000103427 0.00225785 2.86123e-005 0.000162062 0.000202326 0.000400576 ;
1.40283e-005 1.0377e-005 3.12064e-006 1.38379e-005 6.47216e-008 7.25464e-005 9.05496e-007 0.000660107 1.14982e-006 0.0003173 6.20358e-005 3.4144e-006 8.34221e-005 6.53088e-008 1.39962e-007 0 2.59878e-007 4.75534e-005 8.73621e-008 1.86204e-006 5.07337e-006 1.49532e-007 3.71144e-006 1.5841e-008 2.28121e-005 7.67601e-006 0.000619298 1.21753e-007 6.92014e-005 9.85187e-008 9.76793e-006 3.15147e-007 8.0487e-009 2.79897e-007 2.98303e-008 5.57996e-005 5.61489e-006 1.25097e-007 1.47274e-007 1.38832e-007 1.98924e-005 4.37322e-006 1.5765e-007 1.45724e-005 4.65383e-007 2.5087e-005 1.52562e-005 7.67873e-007 1.56023e-008 5.46437e-006 ;
254.32 0.00253681 0.0305623 0.000694086 0.000126999 0.0149283 0.0385752 0.000284651 0.000663367 0.000114219 3.36744e-005 0.552379 0.000546004 0.000965935 0.000246419 0.00128448 0 0.000455145 2.38833e-005 6.24084e-005 1.14291 5.31319e-005 4.91595e-005 2.98086e-005 0.000144427 0.0199659 0.000915431 0.000811336 9.7397e-005 0.000285043 0.00693758 4.30178e-005 8.9048e-005 6.45853e-005 0.000134619 0.000707702 4.92962e-005 0.00896472 0.00074056 0.00191001 0.000212369 0.00440774 0.000460259 0.000240997 0.549719 0.0106042 0.000128127 0.00837805 8.77568e-006 0.0362101 ;
4.93386e-005 1.25934e-005 6.21275e-006 0.00657985 3.35885e-007 6.06162e-005 2.83885e-006 3.05749e-005 1.29642e-006 0.000188439 5.12946e-005 9.52218e-006 1.56417e-005 2.08059e-007 6.37676e-007 0.000443755 1.07293e-006 0 3.36718e-007 5.95791e-006 1.80305e-005 4.20304e-007 0.0209448 7.59876e-008 6.83451e-006 1.71481e-005 0.000376077 1.10423e-006 2.68634e-005 3.40919e-007 1.22906e-005 8.9284e-007 5.2188e-008 4.80635e-006 1.76085e-007 3.63405e-005 0.0336961 5.10779e-007 3.48873e-007 4.46922e-007 1.98342e-005 5.83254e-006 5.30278e-007 0.000165009 1.54611e-006 3.67938e-005 7.15211e-006 1.78642e-006 7.49484e-008 4.71381e-005 ;
1.54119e-005 9.22946e-007 2.09061e-006 2.60854e-006 2.51306e-006 2.43424e-005 2.89839e-006 2.12784e-006 2.49284e-007 7.86335e-007 2.73192e-007 2.88281e-006 1.09614e-006 3.46755e-007 7.71854e-006 6.10234e-006 4.23595e-007 2.22777e-006 0 8.61474e-006 1.28192e-005 6.58218e-005 3.11235e-007 7.4521e-007 1.84552e-006 3.94039e-005 1.37806e-005 2.35181e-007 1.49616e-006 2.20209e-006 8.13419e-006 0.000126638 3.79886e-008 4.42932e-008 3.53075e-007 2.0696e-005 2.88941e-007 4.71244e-007 5.79498e-007 7.84249e-007 8.695e-006 3.34074e-006 3.26992e-006 6.90096e-006 7.57711e-007 8.52295e-005 2.69565e-006 1.66119e-006 1.22459e-005 4.17185e-006 ;
7.15506e-006 9.79497e-007 1.17308e-006 4.97292e-006 1.98163e-007 2.10512e-005 8.29977e-007 8.76834e-006 2.11165e-007 3.82746e-006 1.53624e-006 1.47053e-006 1.94083e-006 7.75028e-008 4.60593e-007 2.18535e-005 1.6885e-007 6.64756e-006 1.46387e-006 0 4.12267e-006 1.21038e-006 1.00735e-006 5.024e-008 7.12248e-006 9.59824e-006 0.000151967 1.04888e-007 1.59963e-005 2.22625e-007 4.80117e-006 1.15922e-005 1.02602e-008 5.18074e-008 5.809e-008 0.000142613 9.67931e-007 1.26946e-007 1.55738e-007 1.69826e-007 0.000237028 1.95994e-006 3.46252e-007 9.86297e-005 2.95978e-007 3.33839e-005 1.60753e-005 5.80855e-007 1.18954e-007 2.60624e-006 ;
0.00165409 1.34539e-006 2.4978e-005 4.65279e-007 2.36247e-007 1.67388e-005 0.00168931 2.54511e-007 4.91855e-007 9.02986e-008 2.72484e-008 0.000133551 4.25438e-007 1.05335e-005 5.07346e-007 1.00439e-006 8.95736e-005 3.24171e-007 3.49621e-008 6.81904e-008 0 8.98754e-008 3.63346e-008 5.94372e-008 1.48329e-007 6.58783e-005 8.23468e-007 4.17422e-007 8.93707e-008 9.03067e-007 1.00454e-005 5.90674e-008 9.80778e-008 3.00701e-008 2.26165e-007 7.73748e-007 3.61864e-008 0.000102968 3.24654e-006 1.91241e-005 2.23713e-007 6.16514e-006 1.50105e-006 2.20229e-007 0.00130263 1.88378e-005 1.35515e-007 3.76578e-005 1.36451e-008 1.05354e-005 ;
0.0028537 0.000171121 0.00049978 0.000231883 0.000212725 0.00743111 0.000699893 0.000350997 5.78633e-005 9.08126e-005 3.0743e-005 0.000591517 0.000210803 9.14599e-005 0.000822802 0.000852046 7.31081e-005 0.000216823 0.00265556 0.000514347 0.00260491 0 2.79706e-005 7.20472e-005 0.000380503 0.0190741 0.00156999 2.49701e-005 0.00018378 0.000646996 0.00288135 0.00626694 4.29802e-006 5.18489e-006 3.57169e-005 0.00393302 2.73473e-005 8.60821e-005 0.000219802 0.000206311 0.00112046 0.00109275 0.00103906 0.000475473 0.000153688 0.0609245 0.00051089 0.000504719 0.000168342 0.000508861 ;
0.00012989 2.78722e-005 1.62326e-005 0.0127027 1.14605e-006 0.000165346 8.19984e-006 8.64326e-005 3.22684e-006 0.000488661 0.00015549 2.4756e-005 3.68989e-005 6.21349e-007 2.17111e-006 0.00100665 2.91865e-006 0.121148 1.29136e-006 2.71681e-005 5.10445e-005 1.4946e-006 0 2.58671e-007 2.13204e-005 5.17958e-005 0.00144036 3.14243e-006 9.7422e-005 1.09841e-006 3.44317e-005 3.44158e-006 1.58946e-007 8.11565e-006 5.71088e-007 0.000126033 0.04712 1.49054e-006 1.03292e-006 1.33968e-006 7.66054e-005 1.60924e-005 1.70192e-006 0.0011949 4.2289e-006 0.000113212 2.39837e-005 5.08299e-006 2.78927e-007 0.00011656 ;
0.000356294 7.49947e-006 2.78874e-005 1.49775e-005 0.168834 0.000140662 0.000106363 6.15956e-006 2.07381e-006 2.58546e-006 8.38031e-007 5.21681e-005 5.27867e-006 1.68909e-005 0.194548 2.21569e-005 1.34056e-005 9.78128e-006 1.36193e-005 5.82837e-006 0.000492855 2.12432e-005 1.27629e-006 0 4.17935e-006 0.00058882 3.067e-005 7.14869e-006 3.23133e-006 0.000252585 6.07046e-005 9.36823e-006 3.26872e-006 4.05688e-007 0.000140299 3.11289e-005 1.17784e-006 2.95572e-005 1.12151e-005 4.06034e-005 1.10452e-005 2.80609e-005 0.000292597 1.32938e-005 2.08922e-005 0.000387613 4.79093e-006 3.11619e-005 2.31301e-005 7.81188e-005 ;
0.00981146 0.00462028 0.00270572 0.00338768 6.20315e-005 0.135653 0.000859967 7.39067 0.000985038 0.0133867 0.00442241 0.00252354 0.0470577 6.70234e-005 0.000146179 0.364274 0.000184682 0.0068921 0.000121072 0.00283018 0.00426392 0.000250423 0.000711541 1.59568e-005 0 0.010554 0.356908 6.85644e-005 0.0761712 0.000113863 0.0155749 0.000577124 5.74445e-006 7.25467e-005 2.45568e-005 0.694332 0.00087688 0.00010483 0.000181253 0.000142851 0.0828386 0.00613542 0.000184611 0.0080433 0.000369795 0.0554361 0.401656 0.000838578 1.7615e-005 0.00255701 ;
0.000310954 8.76512e-006 0.000110714 2.70967e-006 1.52922e-006 0.000671772 0.00022056 4.16977e-006 5.58171e-006 9.49655e-007 2.96069e-007 8.74912e-005 5.87169e-006 2.71256e-005 4.79663e-006 1.15845e-005 6.45306e-006 2.41334e-006 7.10589e-007 1.12925e-006 0.000406274 3.50258e-006 2.75587e-007 4.72264e-007 3.52213e-006 0 1.12329e-005 5.9753e-007 1.31771e-006 1.76158e-005 0.000913363 1.52534e-006 1.10674e-007 1.13538e-007 5.79153e-007 1.91681e-005 2.82171e-007 7.93699e-006 0.00294006 5.52755e-005 4.40592e-006 0.000382571 3.45184e-005 2.40968e-006 2.47299e-005 0.00546257 3.19792e-006 0.00081058 1.87679e-007 1.56333e-005 ;
0.00129457 0.000519967 0.000251291 0.00222125 9.49055e-006 0.00532735 9.59082e-005 0.0403917 7.17484e-005 0.260538 0.170591 0.00029395 0.00220398 7.37319e-006 2.04697e-005 0.475451 2.59993e-005 0.009123 1.65793e-005 0.000658958 0.000528051 2.47619e-005 0.000903746 2.31484e-006 0.00310494 0.00085733 0 1.45352e-005 0.17303 1.29497e-005 0.000839501 6.52516e-005 1.00542e-006 2.44121e-005 4.04768e-006 0.0129887 0.00133363 1.39539e-005 1.5827e-005 1.58011e-005 0.00806931 0.000365125 2.0545e-005 0.00758272 4.52118e-005 0.00285586 0.00326675 7.57004e-005 2.68715e-006 0.000556611 ;
0.00146199 1.75784e-005 3.94311e-005 5.08971e-005 5.4117e-006 9.7115e-005 5.59516e-005 5.3151e-006 2.84607e-006 3.37319e-006 1.01371e-006 0.000131661 6.56246e-006 3.55181e-006 7.57828e-006 2.86077e-005 6.85669e-005 2.10162e-005 7.38335e-007 2.02382e-006 0.000600058 1.0943e-006 2.49133e-006 1.03254e-006 2.42354e-006 0.000105677 2.5328e-005 0 2.49342e-006 3.75146e-006 3.3534e-005 1.11784e-006 1.80198e-005 3.55936e-006 9.61127e-006 1.37895e-005 2.26762e-006 2.5883e-005 2.75724e-006 7.67675e-006 5.12618e-006 1.79233e-005 5.62327e-006 1.03583e-005 4.17623e-005 9.0226e-005 2.4172e-006 1.58711e-005 3.35243e-007 0.00911693 ;
0.000431224 0.000139291 9.04512e-005 0.000374435 4.01878e-006 0.00245899 3.76602e-005 0.0231645 2.48169e-005 0.00305085 0.00139994 9.96856e-005 0.000630164 3.04465e-006 9.09625e-006 0.0232963 8.80195e-006 0.000948206 9.56257e-006 0.000596499 0.000195023 1.49868e-005 0.000109991 1.00762e-006 0.00490931 0.000403603 1.47212 4.40743e-006 0 5.89751e-006 0.000386274 4.7095e-005 3.50057e-007 4.81156e-006 1.54624e-006 0.0311441 0.000135869 5.20431e-006 7.01732e-006 6.5451e-006 0.0288785 0.00015925 9.39598e-006 0.00244461 1.60918e-005 0.00164474 0.00874736 3.11778e-005 1.31303e-006 0.000151607 ;
0.0064467 0.000108225 0.000695446 9.26422e-005 0.000609613 0.00313285 0.00570351 6.90271e-005 4.01058e-005 2.21418e-005 7.05536e-006 0.00110435 7.17853e-005 0.00213155 0.0030684 0.000221584 0.000215225 6.98298e-005 5.80133e-005 3.90803e-005 0.0140079 0.000237902 8.53563e-006 0.000253968 5.2185e-005 0.0697251 0.000264475 3.6001e-005 2.93074e-005 0 0.00184517 6.89825e-005 1.24e-005 3.21888e-006 0.000134055 0.000350717 8.28062e-006 0.000659913 0.00119273 0.00566499 0.000102417 0.000844449 37.6766 8.21515e-005 0.000507945 0.0139193 5.5103e-005 0.00170534 2.94725e-005 0.000591273 ;
0.0204882 0.0017296 0.0476048 0.000144537 2.16471e-005 0.370919 0.00309397 0.000331865 0.00322748 6.24648e-005 1.87114e-005 0.0100288 0.000865121 0.000172847 5.60751e-005 0.0009334 0.000273493 0.000142354 1.26233e-005 3.9608e-005 0.0103041 4.38981e-005 1.50921e-005 5.95938e-006 0.00024303 0.0584969 0.000641434 2.21876e-005 7.67905e-005 9.75715e-005 0 3.28724e-005 2.7423e-006 7.80568e-006 1.04379e-005 0.000962995 1.61723e-005 0.000151201 0.00148523 0.000343384 0.000202074 20.7018 0.000171425 0.00010542 0.0011191 0.0813061 0.00018065 0.0160856 2.99376e-006 0.000833484 ;
0.00135106 0.000119154 0.000235228 0.000252601 7.01994e-005 0.00424583 0.000231527 0.00046443 3.41394e-005 0.000124854 4.43734e-005 0.000280806 0.000186951 2.54422e-005 0.000206775 0.00104043 3.3274e-005 0.000263666 0.0030355 0.00246718 0.000992284 0.00500502 3.56768e-005 2.0379e-005 0.000545182 0.00412946 0.00280831 1.50191e-005 0.000331476 0.000111169 0.00124906 0 2.03861e-006 4.32364e-006 1.46044e-005 0.00857014 3.47171e-005 3.17505e-005 5.66715e-005 5.65216e-005 0.00322292 0.000480443 0.000174395 0.000947812 6.43966e-005 0.0168045 0.00094521 0.000167398 7.11691e-005 0.0003279 ;
0.000787201 6.49435e-006 2.34643e-005 1.28683e-005 1.67747e-005 5.9586e-005 8.21546e-005 2.55282e-006 1.41099e-006 1.32669e-006 4.09854e-007 7.21544e-005 2.90588e-006 6.59428e-006 1.91802e-005 1.15907e-005 4.99314e-005 6.57855e-006 7.70852e-007 1.26487e-006 0.000828545 1.21293e-006 8.09296e-007 2.8693e-006 1.35972e-006 0.000124369 1.18854e-005 0.000120609 1.20697e-006 8.07231e-006 2.39712e-005 9.70121e-007 0 5.85616e-007 0.000114395 8.32314e-006 7.43307e-007 7.06804e-005 3.29491e-006 1.4763e-005 2.97599e-006 1.2501e-005 1.16026e-005 4.85796e-006 3.59425e-005 7.91255e-005 1.40179e-006 1.58835e-005 4.60895e-007 0.000355475 ;
0.000744929 0.000152991 6.19438e-005 0.00121885 1.48884e-006 0.000278268 2.31726e-005 3.56921e-005 1.03863e-005 4.08909e-005 1.08244e-005 0.000127635 5.29474e-005 1.43062e-006 2.68501e-006 0.000344219 1.50297e-005 0.000466649 7.37805e-007 5.30358e-006 0.000179202 1.11329e-006 3.84063e-005 3.28371e-007 1.03526e-005 8.91967e-005 0.000163947 1.78085e-005 1.51043e-005 1.64758e-006 6.43337e-005 1.62401e-006 4.77453e-007 0 1.08019e-006 4.77288e-005 3.95885e-005 4.66648e-006 2.08362e-006 3.03141e-006 1.85949e-005 3.39528e-005 2.57327e-006 4.7652e-005 1.78574e-005 0.000136002 9.33863e-006 1.29433e-005 2.10098e-007 0.00227391 ;
0.0327465 0.000373137 0.00144356 0.000746846 0.00877178 0.00459582 0.0065431 0.000193398 9.08801e-005 9.29281e-005 2.92513e-005 0.0036503 0.000198643 0.000734598 0.00693385 0.000804231 0.00169967 0.000417424 0.000109873 0.000121161 0.0471191 0.000171506 5.27704e-005 0.00121705 0.000112563 0.0135354 0.000924554 0.00156169 9.507e-005 0.00172837 0.00193769 0.000116246 0.00515699 2.67323e-005 0 0.000737153 4.84118e-005 0.00437288 0.000331096 0.00171308 0.00026302 0.000970647 0.00233107 0.000391357 0.00180001 0.00797632 0.000120352 0.00128736 8.66142e-005 0.00929855 ;
0.000120873 2.59005e-005 2.9298e-005 3.28957e-005 1.55497e-006 0.00118219 1.4376e-005 0.000649168 7.05045e-006 5.09047e-005 1.86337e-005 2.90139e-005 9.06498e-005 1.27783e-006 3.94725e-006 0.000574515 2.51402e-006 5.10233e-005 6.00776e-006 0.000188942 6.56844e-005 1.34548e-005 6.18593e-006 4.16626e-007 0.00354996 0.000231904 0.00204783 9.75235e-007 0.000351503 2.92481e-006 0.00020384 4.92223e-005 9.83622e-008 5.93429e-007 5.02826e-007 0 6.78012e-006 1.75676e-006 3.51157e-006 2.75951e-006 0.0117728 7.48301e-005 4.73224e-006 0.000143345 5.09151e-006 0.00160962 0.0328183 1.33279e-005 6.12059e-007 2.92923e-005 ;
0.00564699 0.00136399 0.000764197 0.174888 4.96132e-005 0.0087665 0.000369606 0.00617043 0.000161369 0.0577021 0.0196654 0.00111154 0.00214589 2.81873e-005 9.6426e-005 0.0783533 0.000124374 3.9134 6.30416e-005 0.00164828 0.00224468 7.46327e-005 2.76537 1.13692e-005 0.00138662 0.00249628 0.135921 0.000117169 0.00838703 5.0357e-005 0.00175305 0.000181116 6.38572e-006 0.000278617 2.37123e-005 0.00815386 0 6.44949e-005 4.89943e-005 6.07349e-005 0.00525238 0.000809198 7.83128e-005 0.0883872 0.000186648 0.00586187 0.00158131 0.000238891 1.27331e-005 0.0043513 ;
0.453422 0.00127477 0.0092706 0.00101423 0.00133367 0.0145563 0.141958 0.00036967 0.000358248 0.000153663 4.70597e-005 0.0345814 0.00049855 0.00858986 0.00231843 0.00152492 0.0483568 0.000626023 8.8457e-005 0.000139705 2.53816 0.000191128 7.34217e-005 0.000299898 0.000212151 0.0540389 0.00142506 0.00213775 0.000150582 0.00263156 0.00721155 0.000124869 0.00175266 5.52974e-005 0.00263499 0.00121907 7.05642e-005 0 0.0018443 0.0187945 0.000387338 0.00396396 0.00400427 0.000462878 0.0405007 0.0204772 0.000207514 0.0100703 4.42254e-005 0.0260358 ;
9.99221 0.0738828 3.17168 0.0156547 0.00655566 2.26025 18.1635 0.0158827 0.046637 0.00434615 0.00131916 3.32572 0.0286711 0.441548 0.0170124 0.0532856 0.17197 0.0127445 0.00178538 0.00355671 19.0451 0.00595744 0.00141346 0.00182807 0.0106515 25.212 0.0434892 0.00563218 0.00492627 0.0450688 2.38043 0.00349756 0.00102851 0.000872231 0.0037868 0.0529518 0.00144542 0.164916 0 0.761886 0.0134519 1.58274 0.0815907 0.00977884 1.4199 3.109 0.00929225 4240.83 0.000565222 0.165691 ;
0.121594 0.00074388 0.0114456 0.000310073 0.000346909 0.0183566 3.27266 0.000235883 0.00033063 7.31941e-005 2.25697e-005 0.0215469 0.000339827 3.92857 0.000943742 0.000811782 0.00385425 0.000233761 5.31104e-005 7.61118e-005 0.808384 0.000174782 2.69383e-005 0.000100777 0.000159818 0.453047 0.000760126 0.00016097 8.44677e-005 0.0041146 0.013857 8.65835e-005 4.55379e-005 1.51368e-005 0.000206539 0.000893106 2.68125e-005 0.0153258 0.0365364 0 0.000245478 0.00760466 0.00763614 0.000200798 0.0182771 0.0410217 0.000150752 0.101992 2.05623e-005 0.00345779 ;
0.00124994 0.00025804 0.000237499 0.000957337 1.9198e-005 0.0055877 0.000127884 0.00713086 5.26768e-005 0.0020548 0.00089665 0.000274726 0.000747209 1.11271e-005 4.44562e-005 0.012181 2.72998e-005 0.00177173 7.44141e-005 0.022846 0.000641677 9.79211e-005 0.000242305 4.86831e-006 0.00561497 0.00148925 0.239491 1.48008e-005 0.0341166 2.59783e-005 0.00105546 0.00048491 1.30852e-006 1.08214e-005 6.50044e-006 0.150152 0.000260562 1.82427e-005 2.46798e-005 2.41312e-005 0 0.000426696 4.10565e-005 0.0157076 4.94432e-005 0.00610577 0.0184224 9.95705e-005 8.10257e-006 0.0004351 ;
0.182337 0.0558097 0.679772 0.00158459 0.000127119 5.8069 0.0129038 0.00406982 0.570551 0.000744503 0.00021663 0.102975 0.0176449 0.000667403 0.00030796 0.0125067 0.00209759 0.00164043 7.77695e-005 0.000320534 0.0571307 0.000230537 0.00016601 3.3598e-005 0.00245905 0.122829 0.00676317 0.000193455 0.000807441 0.000425701 2.23434 0.000209998 1.94941e-005 0.0001009 6.63018e-005 0.00837159 0.000182507 0.000855001 0.00309927 0.00134032 0.0017847 0 0.00072667 0.000992931 0.00730045 0.233607 0.00167287 0.0329336 1.81973e-005 0.00881776 ;
0.0545005 0.00115804 0.00572693 0.00134602 0.0234813 0.0314537 0.0287582 0.000919011 0.00039072 0.000311077 0.000100385 0.00914375 0.000845839 0.00683273 0.228475 0.00294917 0.0018241 0.00100015 0.00156234 0.000683744 0.0920824 0.00597264 0.000125562 0.0136963 0.000701933 0.339095 0.00387907 0.000466898 0.000426027 4.40507 0.0161833 0.00143416 0.000160384 4.10034e-005 0.00238849 0.00509553 0.00012011 0.00453639 0.0053207 0.0170843 0.00157552 0.00721761 0 0.00133385 0.00373329 0.138426 0.000779558 0.00983075 0.00107158 0.00702941 ;
5.61338e-006 9.59544e-007 8.11876e-007 1.91992e-005 9.74973e-008 1.14749e-005 4.91296e-007 7.94465e-006 1.56253e-007 1.45422e-005 6.63993e-006 1.11172e-006 1.77555e-006 4.15284e-008 1.99705e-007 3.9464e-005 1.30483e-007 3.59789e-005 2.4488e-007 2.88748e-005 2.72706e-006 2.3002e-007 7.41936e-006 2.29845e-008 2.98778e-006 4.15404e-006 0.000377096 1.08671e-007 2.34586e-005 9.43632e-008 2.43872e-006 8.66481e-007 7.95875e-009 9.27263e-008 3.69832e-008 2.89895e-005 6.44692e-006 8.27332e-008 7.50718e-008 9.03423e-008 3.3345e-005 1.06349e-006 1.46026e-007 0 2.08365e-007 1.12968e-005 4.71999e-006 3.21781e-007 3.71816e-008 3.0523e-006 ;
60.0461 0.00114314 0.02031 0.000290042 6.58467e-005 0.00832461 0.0389953 0.000137394 0.000349389 5.19854e-005 1.54002e-005 0.385249 0.000262911 0.000755222 0.0001325 0.000592725 0.602786 0.0001971 1.23124e-005 3.04248e-005 1.52524 2.88367e-005 2.14061e-005 1.5818e-005 7.25331e-005 0.0136435 0.000431621 0.000282152 4.63505e-005 0.000172767 0.0042306 2.21995e-005 3.79099e-005 2.44217e-005 6.58684e-005 0.00035646 2.1522e-005 0.00637365 0.000550086 0.00146268 0.000104614 0.0027315 0.000282066 0.000111352 0 0.00628377 6.42235e-005 0.00710813 4.501e-006 0.010865 ;
0.00382038 0.000548324 0.00155908 0.000186145 2.85515e-005 0.166417 0.000681215 0.00110964 0.000314474 0.000129103 4.14233e-005 0.00109451 0.00103712 6.23462e-005 8.21131e-005 0.00183231 7.28041e-005 0.000216113 4.90561e-005 0.000179037 0.00245555 0.000245429 2.44458e-005 8.27048e-006 0.00186068 0.0286902 0.0020453 1.4707e-005 0.000271692 0.000111105 0.0492076 0.000208677 1.85839e-006 5.87103e-006 9.4985e-006 0.00919648 2.62083e-005 5.63861e-005 0.000332078 0.00013243 0.0012335 0.011971 0.000191774 0.000278304 0.000191112 0 0.00151436 0.00104972 7.26706e-006 0.000446586 ;
8.27517e-005 2.43325e-005 2.08073e-005 2.81969e-005 7.88869e-007 0.000907265 8.52074e-006 0.00228281 5.90338e-006 7.22054e-005 2.64438e-005 2.03101e-005 0.000122638 7.13236e-007 1.91907e-006 0.000995657 1.65589e-006 5.08742e-005 2.20631e-006 7.56619e-005 4.0643e-005 4.54157e-006 5.84759e-006 2.06403e-007 0.036206 0.000119144 0.00348858 6.51002e-007 0.000770119 1.42729e-006 0.000131294 1.35429e-005 5.97041e-008 5.12895e-007 2.80946e-007 0.507478 6.74746e-006 1.05272e-006 1.91962e-006 1.53167e-006 0.00685168 4.97748e-005 2.3075e-006 0.000111134 3.30644e-006 0.000714783 0 7.98614e-006 2.68322e-007 2.1423e-005 ;
0.145127 0.0031671 0.145434 0.000491675 0.000142572 0.194596 0.0626264 0.000713426 0.00287858 0.000166231 5.0406e-005 0.0617998 0.00140745 0.00309173 0.000381157 0.00218704 0.00217857 0.000435406 5.74477e-005 0.000131184 0.131315 0.000208373 4.76621e-005 4.01992e-005 0.000512789 1.11986 0.00172135 0.000118144 0.000200021 0.000899022 0.3786 0.000127671 1.82605e-005 2.61976e-005 7.16048e-005 0.00239118 4.96141e-005 0.00162113 0.0670058 0.00585532 0.000557114 0.285893 0.00163014 0.000342268 0.0121527 0.231147 0.000425879 0 1.57464e-005 0.0038142 ;
0.00162473 6.44362e-005 0.000169791 0.000196881 0.00170137 0.0013403 0.000335115 9.20068e-005 1.67891e-005 3.97471e-005 1.33839e-005 0.00027119 5.96406e-005 4.32182e-005 0.00480814 0.000309167 5.07121e-005 0.000139903 0.00230687 0.000187553 0.00155993 0.000806841 1.94141e-005 0.000489315 6.71929e-005 0.00311456 0.000559002 3.43127e-005 5.85226e-005 0.00037514 0.000493115 0.000488823 7.44158e-006 3.75448e-006 0.000107427 0.000604199 1.76004e-005 6.82e-005 5.10919e-005 9.96283e-005 0.000243988 0.000214844 0.00051362 0.000300717 8.28538e-005 0.00396342 8.6744e-005 0.000147729 0 0.000471897 ;
0.00647691 0.000198237 0.000231697 0.000582125 8.64296e-006 0.000590743 0.000147388 3.92206e-005 2.18442e-005 2.9172e-005 8.38021e-006 0.000727365 5.69707e-005 8.49874e-006 1.41266e-005 0.000255555 0.000176778 0.000217397 2.3083e-006 9.72767e-006 0.00143842 3.54843e-006 2.31321e-005 1.80443e-006 1.513e-005 0.000357462 0.000176094 0.000819342 1.70239e-005 8.35345e-006 0.000174784 4.20336e-006 6.72432e-006 0.000147924 9.05322e-006 7.74788e-005 2.17817e-005 4.21119e-005 9.14511e-006 1.8035e-005 2.8754e-005 9.54497e-005 1.28699e-005 6.21118e-005 0.000137192 0.000385426 1.42662e-005 5.89517e-005 8.25732e-007 0];
m = F;
max(eig(m))

normList = zeros(1, size(m,1));
for i=1:size(m,1)
    normList(i) = norm(m(:,i));
end
entry = find(normList==max(normList))
m(:,entry) = [];
m(entry,:) = [];
m

init = ones(50,1);
init = F*init;