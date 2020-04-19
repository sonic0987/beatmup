STRINGIFY(
        layout(binding = 0, rgba8) uniform writeonly lowp image2D[6] outFeatures;
        lowp float fetchLuma(highp ivec2 p) {
           return dot(texelFetch(image, p, 0).rgb, vec3(0.299, 0.587, 0.114));
        }
        void main() {
            lowp float ii[5][5];
            for (int y = -2; y <= 2; ++y)
            for (int x = -2; x <= 2; ++x)
                ii[x+2][y+2] = fetchLuma(ivec2(gl_GlobalInvocationID.xy) + ivec2(x,y));
            lowp vec4 i[6];
            i[0] = vec4(ii[0][0], ii[1][0], ii[2][0], ii[3][0]);
            i[1] = vec4(ii[4][0], ii[0][1], ii[1][1], ii[2][1]);
            i[2] = vec4(ii[3][1], ii[4][1], ii[0][2], ii[1][2]);
            i[3] = vec4(ii[2][2], ii[3][2], ii[4][2], ii[0][3]);
            i[4] = vec4(ii[1][3], ii[2][3], ii[3][3], ii[4][3]);
            i[5] = vec4(ii[0][4], ii[1][4], ii[2][4], ii[3][4]);
            mediump vec4 sum;
            sum = vec4(0.066484,0.031277,0.128394,0.040365) + vec4(
                -0.048694 * ii[4][4] + dot(vec4(0.089558,-0.033214,-0.066761,0.026502), i[0]) + dot(vec4(-0.009299,-0.142194,0.221790,0.000842), i[1]) + dot(vec4(-0.046175,0.003441,-0.022802,-0.199130), i[2]) + dot(vec4(0.078142,0.200379,-0.052208,-0.002889), i[3]) + dot(vec4(0.078504,-0.129430,-0.113166,0.085443), i[4]) + dot(vec4(0.024961,-0.002610,0.060551,0.014722), i[5]),
                -0.028172 * ii[4][4] + dot(vec4(0.020345,0.038529,-0.013259,-0.000521), i[0]) + dot(vec4(-0.020725,0.046312,0.079143,0.048599), i[1]) + dot(vec4(-0.046837,-0.001110,0.014924,0.197559), i[2]) + dot(vec4(0.176219,0.049865,-0.005066,-0.038889), i[3]) + dot(vec4(0.062636,0.119937,-0.006587,0.028054), i[4]) + dot(vec4(-0.009746,0.011315,-0.033712,-0.013668), i[5]),
                -0.052063 * ii[4][4] + dot(vec4(0.010686,-0.010363,0.000186,-0.013082), i[0]) + dot(vec4(0.020033,-0.101680,-0.039978,-0.143235), i[1]) + dot(vec4(-0.018775,0.004329,0.130781,-0.042737), i[2]) + dot(vec4(0.168502,0.084383,-0.002199,-0.047643), i[3]) + dot(vec4(0.059003,0.049164,-0.121864,0.064037), i[4]) + dot(vec4(0.008833,-0.061199,0.038414,0.025934), i[5]),
                0.016438 * ii[4][4] + dot(vec4(-0.008339,0.023243,0.020348,-0.020002), i[0]) + dot(vec4(0.017244,0.011593,0.001868,-0.020100), i[1]) + dot(vec4(0.002583,0.018854,-0.005063,0.031820), i[2]) + dot(vec4(-0.752573,0.176385,0.022014,-0.001024), i[3]) + dot(vec4(0.038360,0.146624,-0.038598,-0.019867), i[4]) + dot(vec4(0.010945,0.021003,0.042393,-0.007245), i[5])
            );
            imageStore(outFeatures[0], ivec2(gl_GlobalInvocationID.xy), sum);
            sum = vec4(0.000819,0.002679,-0.001666,0.016259) + vec4(
                -0.024952 * ii[4][4] + dot(vec4(0.094151,0.028558,-0.055016,-0.055700), i[0]) + dot(vec4(-0.014320,-0.035812,0.294502,0.249755), i[1]) + dot(vec4(0.042912,-0.024795,-0.244312,-0.410410), i[2]) + dot(vec4(0.011302,0.088539,0.063416,0.140843), i[3]) + dot(vec4(-0.023440,-0.153250,-0.036562,0.006886), i[4]) + dot(vec4(0.026477,0.070108,0.020074,-0.069296), i[5]),
                0.010981 * ii[4][4] + dot(vec4(-0.001558,0.007953,-0.005058,0.008436), i[0]) + dot(vec4(0.002002,0.021489,-0.013238,0.022834), i[1]) + dot(vec4(-0.037504,-0.012864,-0.002739,0.042952), i[2]) + dot(vec4(-0.008841,0.287401,-0.107039,-0.029071), i[3]) + dot(vec4(-0.005925,0.035914,0.324808,-0.119480), i[4]) + dot(vec4(-0.007585,0.013874,-0.158980,-0.141671), i[5]),
                -0.011475 * ii[4][4] + dot(vec4(0.002181,0.002280,-0.002251,0.000642), i[0]) + dot(vec4(0.008016,-0.001168,-0.002224,-0.002400), i[1]) + dot(vec4(-0.001198,-0.010388,0.006527,0.006941), i[2]) + dot(vec4(0.002587,-0.007759,-0.011536,-0.003485), i[3]) + dot(vec4(-0.004608,-0.026047,-0.518676,0.020610), i[4]) + dot(vec4(0.002261,-0.006069,0.034012,0.526197), i[5]),
                -0.020554 * ii[4][4] + dot(vec4(-0.002426,0.019610,0.062215,0.033716), i[0]) + dot(vec4(0.002708,0.023233,0.012166,0.058464), i[1]) + dot(vec4(0.054572,0.017292,0.064647,0.099508), i[2]) + dot(vec4(0.100933,0.100705,0.051387,0.008242), i[3]) + dot(vec4(0.048193,0.078650,0.105418,0.015843), i[4]) + dot(vec4(-0.018338,-0.003021,-0.049115,0.000757), i[5])
            );
            imageStore(outFeatures[1], ivec2(gl_GlobalInvocationID.xy), sum);
            sum = vec4(0.029585,-0.005013,0.215043,0.009253) + vec4(
                -0.001606 * ii[4][4] + dot(vec4(-0.006476,0.061439,-0.011630,-0.025089), i[0]) + dot(vec4(0.022029,0.020364,-0.119760,-0.003126), i[1]) + dot(vec4(-0.013954,-0.069994,0.017136,0.051112), i[2]) + dot(vec4(0.145649,0.038079,0.106886,-0.035549), i[3]) + dot(vec4(-0.083289,-0.060003,-0.137615,-0.016392), i[4]) + dot(vec4(0.030396,0.007221,0.053810,0.037477), i[5]),
                -0.002997 * ii[4][4] + dot(vec4(-0.001957,0.075767,-0.065385,0.034551), i[0]) + dot(vec4(-0.001717,0.059517,-0.231996,0.248520), i[1]) + dot(vec4(-0.169142,0.038593,-0.200955,0.505108), i[2]) + dot(vec4(-0.567553,0.401226,-0.132257,0.054503), i[3]) + dot(vec4(-0.197895,0.247080,-0.153552,0.046775), i[4]) + dot(vec4(0.008055,0.026255,-0.038680,-0.000053), i[5]),
                0.046963 * ii[4][4] + dot(vec4(-0.020042,-0.006651,0.014626,-0.000382), i[0]) + dot(vec4(-0.000701,0.038211,-0.016709,-0.050615), i[1]) + dot(vec4(-0.029283,0.015894,-0.018405,0.041859), i[2]) + dot(vec4(0.247107,-0.014759,-0.013611,0.000683), i[3]) + dot(vec4(-0.036023,-0.460936,0.067275,-0.029568), i[4]) + dot(vec4(-0.010172,0.034393,-0.015834,0.015956), i[5]),
                -0.004485 * ii[4][4] + dot(vec4(0.000531,-0.000511,-0.020189,-0.001747), i[0]) + dot(vec4(-0.015274,0.014128,-0.044218,0.127617), i[1]) + dot(vec4(0.002069,0.016693,-0.060662,0.395772), i[2]) + dot(vec4(-0.531938,-0.033878,-0.003812,0.010900), i[3]) + dot(vec4(0.419825,-0.311265,-0.110172,-0.038000), i[4]) + dot(vec4(-0.017840,-0.026455,-0.018336,0.073299), i[5])
            );
            imageStore(outFeatures[2], ivec2(gl_GlobalInvocationID.xy), sum);
            sum = vec4(0.148521,0.019425,0.140178,0.011645) + vec4(
                0.004117 * ii[4][4] + dot(vec4(0.000286,-0.020340,-0.088156,-0.028325), i[0]) + dot(vec4(-0.002033,-0.028656,-0.042944,0.006688), i[1]) + dot(vec4(0.062314,-0.018787,-0.025937,0.146729), i[2]) + dot(vec4(0.249795,0.018330,-0.014874,-0.006028), i[3]) + dot(vec4(-0.030634,0.232171,-0.001396,-0.021788), i[4]) + dot(vec4(0.013486,-0.019495,-0.016514,0.020779), i[5]),
                -0.025891 * ii[4][4] + dot(vec4(-0.024399,0.005390,0.008931,0.011598), i[0]) + dot(vec4(-0.003760,0.037167,-0.055192,-0.050542), i[1]) + dot(vec4(-0.033125,-0.002580,-0.163076,0.481940), i[2]) + dot(vec4(0.303323,-0.090643,0.010160,-0.008076), i[3]) + dot(vec4(-0.268641,-0.060211,-0.021166,0.032610), i[4]) + dot(vec4(-0.005083,0.060598,-0.002306,0.006322), i[5]),
                0.008864 * ii[4][4] + dot(vec4(-0.004984,0.010944,-0.138692,-0.025641), i[0]) + dot(vec4(0.018747,0.018186,0.170545,0.070725), i[1]) + dot(vec4(0.081390,0.037850,-0.058859,0.012245), i[2]) + dot(vec4(-0.098423,-0.044501,0.043815,-0.017058), i[3]) + dot(vec4(-0.058138,-0.010043,-0.019155,0.019740), i[4]) + dot(vec4(0.002710,0.005076,0.082820,0.063496), i[5]),
                0.024088 * ii[4][4] + dot(vec4(-0.029624,-0.059764,-0.188765,-0.023177), i[0]) + dot(vec4(0.085882,0.009628,0.018906,0.416336), i[1]) + dot(vec4(0.229502,-0.048422,0.047694,0.090110), i[2]) + dot(vec4(0.010909,-0.292020,-0.162063,-0.042027), i[3]) + dot(vec4(-0.067440,-0.183951,-0.016370,0.090882), i[4]) + dot(vec4(0.036610,-0.045061,0.067328,0.059440), i[5])
            );
            imageStore(outFeatures[3], ivec2(gl_GlobalInvocationID.xy), sum);
            sum = vec4(-0.000806,0.001096,0.351398,0.038272) + vec4(
                0.005205 * ii[4][4] + dot(vec4(-0.000482,0.000169,-0.003803,0.000461), i[0]) + dot(vec4(0.001091,0.009488,-0.007875,0.010956), i[1]) + dot(vec4(-0.009568,0.000913,-0.009647,0.025419), i[2]) + dot(vec4(-0.024990,0.006437,0.003896,0.018830), i[3]) + dot(vec4(0.555726,-0.569396,0.004360,-0.012654), i[4]) + dot(vec4(-0.009086,0.016608,-0.001837,-0.010033), i[5]),
                0.015057 * ii[4][4] + dot(vec4(-0.012912,-0.011937,-0.004789,0.018469), i[0]) + dot(vec4(-0.008436,0.023113,-0.021619,-0.019183), i[1]) + dot(vec4(0.025679,-0.000580,0.036316,-0.044842), i[2]) + dot(vec4(-0.241364,0.344428,-0.062766,0.001454), i[3]) + dot(vec4(-0.017653,0.013759,0.058156,-0.015812), i[4]) + dot(vec4(0.000614,0.003904,-0.004050,-0.027531), i[5]),
                0.040964 * ii[4][4] + dot(vec4(0.008103,-0.003316,0.054108,0.051322), i[0]) + dot(vec4(-0.010830,-0.017249,-0.006392,-0.048804), i[1]) + dot(vec4(-0.018471,0.012964,0.056502,-0.292197), i[2]) + dot(vec4(-0.009987,0.047334,-0.000223,-0.004199), i[3]) + dot(vec4(-0.183589,0.286621,-0.046520,-0.022432), i[4]) + dot(vec4(0.025663,-0.040345,-0.069948,0.048641), i[5]),
                -0.013119 * ii[4][4] + dot(vec4(-0.004655,0.009565,-0.059361,-0.011843), i[0]) + dot(vec4(0.000665,0.016066,-0.049909,0.162656), i[1]) + dot(vec4(-0.010658,0.036962,-0.044378,0.168678), i[2]) + dot(vec4(-0.352570,0.126882,-0.092685,0.054538), i[3]) + dot(vec4(-0.205213,0.323803,-0.052908,0.044086), i[4]) + dot(vec4(-0.013345,0.079366,-0.124239,0.004550), i[5])
            );
            imageStore(outFeatures[4], ivec2(gl_GlobalInvocationID.xy), sum);
            sum = vec4(0.073871,0.000195,0.185593,0.00264) + vec4(
                0.000950 * ii[4][4] + dot(vec4(-0.013491,0.170159,0.092716,-0.043399), i[0]) + dot(vec4(0.015131,-0.017173,-0.015574,0.050629), i[1]) + dot(vec4(0.001527,-0.016321,0.024681,-0.136536), i[2]) + dot(vec4(0.108914,-0.086363,0.014568,-0.016491), i[3]) + dot(vec4(-0.084914,-0.015133,-0.014245,-0.022697), i[4]) + dot(vec4(-0.011583,0.088873,0.076906,-0.039482), i[5]),
                0.009255 * ii[4][4] + dot(vec4(-0.001407,-0.006870,0.005030,-0.005271), i[0]) + dot(vec4(0.004417,-0.005361,-0.036059,0.013328), i[1]) + dot(vec4(0.013483,0.007208,0.062571,0.383315), i[2]) + dot(vec4(0.134840,-0.003986,-0.006864,-0.009768), i[3]) + dot(vec4(-0.442245,-0.195667,-0.001533,0.001577), i[4]) + dot(vec4(-0.058801,0.110178,0.029117,-0.008393), i[5]),
                0.030342 * ii[4][4] + dot(vec4(0.062007,0.056668,0.010828,-0.038990), i[0]) + dot(vec4(0.048361,0.047653,-0.136290,0.101153), i[1]) + dot(vec4(0.016429,0.009483,0.014956,0.066102), i[2]) + dot(vec4(-0.084132,-0.000427,-0.021690,0.081981), i[3]) + dot(vec4(-0.031741,-0.109593,-0.084248,-0.049324), i[4]) + dot(vec4(-0.024479,0.068118,0.011664,0.011274), i[5]),
                -0.010114 * ii[4][4] + dot(vec4(-0.008758,-0.046346,0.129422,0.014272), i[0]) + dot(vec4(-0.020759,0.023085,0.024195,-0.585597), i[1]) + dot(vec4(-0.039093,0.004241,-0.037777,0.017734), i[2]) + dot(vec4(0.477839,0.028153,0.000773,0.027276), i[3]) + dot(vec4(-0.027592,-0.006351,-0.011533,0.023597), i[4]) + dot(vec4(-0.000341,-0.006421,0.014950,0.006821), i[5])
            );
            imageStore(outFeatures[5], ivec2(gl_GlobalInvocationID.xy), sum);
        }
    )