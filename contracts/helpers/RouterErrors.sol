pragma solidity ^0.8.0;
/*
                                                           ,▄▓▓██▌   ,╓▄▄▓▓▓▓▓▓▓▓▄▄▄,,
                                                        ,▓██▓███▓▄▓███▓╬╬╬╬╬╬╬╬╬╬╬╬╬▓███▓▄,
                                                  ▄█   ▓██╬╣███████╬▓▀╬╬▓▓▓████████████▓█████▄,
                                                 ▓██▌ ▓██╬╣██████╬▓▌  ██████████████████████▌╙╙▀ⁿ
                                                ▐████████╬▓████▓▓█╨ ▄ ╟█████████▓▓╬╬╬╬╬▓▓█████▓▄
                                  └▀▓▓▄╓        ╟█▓╣█████▓██████▀ ╓█▌ ███████▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬▓██▓▄
                                     └▀████▓▄╥  ▐██╬╬██████████╙ Æ▀─ ▓███▀╚╠╬╩▀▀███████▓▓╬╬╬╬╬╬╬╬╬██▄
                                        └▀██▓▀▀█████▓╬▓██████▀     ▄█████▒╠"      └╙▓██████▓╬╬╬╬╬╬╬╬██▄
                                           └▀██▄,└╙▀▀████▌└╙    ^"▀╙╙╙"╙██      @▄    ╙▀███████╬╬╬╬╬╬╬██µ
                                              └▀██▓▄, ██▌       ╒       ╙█▓     ]▓█▓╔    ▀███████▓╬╬╬╬╬▓█▌
                                                  ▀█████       ▓         ╟█▌    ]╠██▓░▒╓   ▀████████╬╬╬╬╣█▌
                                                  ▐████      ╓█▀█▌      ,██▌    ╚Å███▓▒▒╠╓  ╙█████████╬╬╬╣█▌
                                                  └████     ▓█░░▓█      ▀▀▀    φ▒╫████▒▒▒▒╠╓  █████████▓╬╬▓█µ
                                                   ╘███µ ▌▄█▓▄▓▀`     ,▀    ,╔╠░▓██████▌╠▒▒▒φ  ██████████╬╬██
                                                   ▐████µ╙▓▀`     ,▀╙,╔╔φφφ╠░▄▓███████▌░▓╙▒▒▒╠ └██╬███████╬▓█⌐
                                                   ╫██ ▓▌         ▌φ▒▒░▓██████████████▌▒░▓╚▒▒▒╠ ▓██╬▓██████╣█▌
                                                   ██▌           ▌╔▒▒▄████████████████▒▒▒░▌╠▒▒▒≥▐██▓╬╬███████▌
                                                   ██▌      ,╓φ╠▓«▒▒▓████▀  ▀█████████▌▒▒▒╟░▒▒▒▒▐███╬╬╣████▓█▌
                                                  ▐██      ╠▒▄▓▓███▓████└     ▀████████▌▒▒░▌╚▒▒▒▐███▓╬╬████ ╙▌
                                                  ███  )  ╠▒░░░▒░╬████▀        └████████░▒▒░╬∩▒▒▓████╬╬╣███
                                                 ▓██    ╠╠▒▒▐█▀▀▌`░╫██           ███████▒▒▒▒░▒▒½█████╬╬╣███
                                                ███ ,█▄ ╠▒▒▒╫▌,▄▀,▒╫██           ╟██████▒▒▒░╣⌠▒▓█████╬╬╣██▌
                                               ╘██µ ██` ╠▒▒░██╬φ╠▄▓██`            ██████░░▌φ╠░▓█████▓╬╬▓██
                                                ╟██  .φ╠▒░▄█▀░░▄██▀└              █████▌▒╣φ▒░▓██████╬╬╣██
                                                 ▀██▄▄▄╓▄███████▀                ▐█████░▓φ▒▄███████▓╬╣██
                                                   ╙▀▀▀██▀└                      ████▓▄▀φ▄▓████████╬▓█▀
                                                                                ▓███╬╩╔╣██████████▓██└
                                                                              ╓████▀▄▓████████▀████▀
                                                                            ,▓███████████████─]██╙
                                                                         ,▄▓██████████████▀└  ╙
                                                                    ,╓▄▓███████████████▀╙
                                                             `"▀▀▀████████▀▀▀▀`▄███▀▀└
                                                                              └└



                    11\   11\                     11\             11\   11\            11\                                       11\
                  1111 |  \__|                    11 |            111\  11 |           11 |                                      11 |
                  \_11 |  11\ 1111111\   1111111\ 1111111\        1111\ 11 | 111111\ 111111\   11\  11\  11\  111111\   111111\  11 |  11\
                    11 |  11 |11  __11\ 11  _____|11  __11\       11 11\11 |11  __11\\_11  _|  11 | 11 | 11 |11  __11\ 11  __11\ 11 | 11  |
                    11 |  11 |11 |  11 |11 /      11 |  11 |      11 \1111 |11111111 | 11 |    11 | 11 | 11 |11 /  11 |11 |  \__|111111  /
                    11 |  11 |11 |  11 |11 |      11 |  11 |      11 |\111 |11   ____| 11 |11\ 11 | 11 | 11 |11 |  11 |11 |      11  _11<
                  111111\ 11 |11 |  11 |\1111111\ 11 |  11 |      11 | \11 |\1111111\  \1111  |\11111\1111  |\111111  |11 |      11 | \11\
                  \______|\__|\__|  \__| \_______|\__|  \__|      \__|  \__| \_______|  \____/  \_____\____/  \______/ \__|      \__|  \__|



                               111111\                                                               11\     11\
                              11  __11\                                                              11 |    \__|
                              11 /  11 | 111111\   111111\   111111\   111111\   111111\   111111\ 111111\   11\  111111\  1111111\
                              11111111 |11  __11\ 11  __11\ 11  __11\ 11  __11\ 11  __11\  \____11\\_11  _|  11 |11  __11\ 11  __11\
                              11  __11 |11 /  11 |11 /  11 |11 |  \__|11111111 |11 /  11 | 1111111 | 11 |    11 |11 /  11 |11 |  11 |
                              11 |  11 |11 |  11 |11 |  11 |11 |      11   ____|11 |  11 |11  __11 | 11 |11\ 11 |11 |  11 |11 |  11 |
                              11 |  11 |\1111111 |\1111111 |11 |      \1111111\ \1111111 |\1111111 | \1111  |11 |\111111  |11 |  11 |
                              \__|  \__| \____11 | \____11 |\__|       \_______| \____11 | \_______|  \____/ \__| \______/ \__|  \__|
                                        11\   11 |11\   11 |                    11\   11 |
                                        \111111  |\111111  |                    \111111  |
                                         \______/  \______/                      \______/
                                                1111111\                        11\
                                                11  __11\                       11 |
                                                11 |  11 | 111111\  11\   11\ 111111\    111111\   111111\
                                                1111111  |11  __11\ 11 |  11 |\_11  _|  11  __11\ 11  __11\
                                                11  __11< 11 /  11 |11 |  11 |  11 |    11111111 |11 |  \__|
                                                11 |  11 |11 |  11 |11 |  11 |  11 |11\ 11   ____|11 |
                                                11 |  11 |\111111  |\111111  |  \1111  |\1111111\ 11 |
                                                \__|  \__| \______/  \______/    \____/  \_______|\__|
*/

// SPDX-License-Identifier: MIT


// File contracts/helpers/RouterErrors.sol


library RouterErrors {
    error ReturnAmountIsNotEnough();
    error InvalidMsgValue();
    error ERC20TransferFailed();
}

