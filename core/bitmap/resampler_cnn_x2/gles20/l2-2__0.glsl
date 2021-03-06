STRINGIFY(
        uniform sampler2D images[3];
        varying highp vec2 texCoord;
        uniform highp vec2 d1;

        lowp vec4 fetch(sampler2D image, highp float x, highp float y) {
            return texture2D(image, vec2(x, y));
        }

        void main() {
            
        highp float
            x0 = texCoord.x - d1.x,
            x1 = texCoord.x,
            x2 = texCoord.x + d1.x,

            y0 = texCoord.y - d1.y,
            y1 = texCoord.y,
            y2 = texCoord.y + d1.y;
            
        lowp vec4 i0, i1, i2, i3, i4, i5, i6, i7, i8;
        mediump vec4 sum;
    
            i0 = fetch(images[0], x0, y0);
            i1 = fetch(images[0], x1, y0);
            i2 = fetch(images[0], x2, y0);
            i3 = fetch(images[0], x0, y1);
            i4 = fetch(images[0], x1, y1);
            i5 = fetch(images[0], x2, y1);
            i6 = fetch(images[0], x0, y2);
            i7 = fetch(images[0], x1, y2);
            i8 = fetch(images[0], x2, y2);
        
            sum = vec4(
                dot(vec4(0.081481, -0.048220, -0.166954, -0.044684), i0)
                + dot(vec4(-0.093642, 0.037253, 0.244072, -0.101678), i1)
                + dot(vec4(0.184680, 0.049299, 0.099349, 0.087873), i2)
                + dot(vec4(-0.149203, 0.039440, -0.014329, -0.157486), i3)
                + dot(vec4(-0.100836, 0.129547, -0.127509, -0.113345), i4)
                + dot(vec4(-0.088165, -0.021057, 0.081527, 0.049354), i5)
                + dot(vec4(0.024699, -0.150017, -0.015982, 0.033799), i6)
                + dot(vec4(-0.012376, -0.021176, -0.021099, -0.015001), i7)
                + dot(vec4(0.031427, 0.121658, -0.007433, 0.091231), i8),
                dot(vec4(-0.033476, 0.003665, -0.044105, 0.077333), i0)
                + dot(vec4(0.058603, 0.004837, -0.086579, 0.050585), i1)
                + dot(vec4(-0.101886, 0.071642, 0.144190, -0.028123), i2)
                + dot(vec4(0.088471, 0.053732, -0.051591, -0.035599), i3)
                + dot(vec4(-0.167223, 0.158765, 0.077285, 0.028940), i4)
                + dot(vec4(0.198164, -0.031960, 0.054201, -0.091513), i5)
                + dot(vec4(0.000671, -0.082852, 0.031492, 0.129873), i6)
                + dot(vec4(0.168753, 0.184523, 0.062219, 0.048425), i7)
                + dot(vec4(-0.180094, 0.249324, -0.047442, 0.011601), i8),
                dot(vec4(0.019261, -0.071415, -0.285890, -0.025627), i0)
                + dot(vec4(-0.302710, 0.054149, -0.325352, 0.394031), i1)
                + dot(vec4(0.146364, 0.019797, 0.081373, 0.209237), i2)
                + dot(vec4(0.031049, -0.034202, 0.088716, 0.017314), i3)
                + dot(vec4(0.318756, -0.106587, 0.385432, -0.464374), i4)
                + dot(vec4(-0.070671, 0.079775, 0.092106, -0.093569), i5)
                + dot(vec4(-0.027464, 0.149303, -0.016291, 0.032346), i6)
                + dot(vec4(0.195555, 0.058443, -0.016421, -0.237687), i7)
                + dot(vec4(-0.072062, -0.226953, 0.311410, 0.061387), i8),
                dot(vec4(0.020789, -0.064666, 0.097040, -0.078226), i0)
                + dot(vec4(-0.006612, 0.089338, -0.145080, -0.038083), i1)
                + dot(vec4(0.106844, -0.095287, -0.091843, 0.037120), i2)
                + dot(vec4(0.059234, 0.097801, 0.033086, 0.074226), i3)
                + dot(vec4(0.089425, 0.127616, -0.014481, 0.659242), i4)
                + dot(vec4(-0.061887, 0.146592, 0.091448, -0.281444), i5)
                + dot(vec4(0.066854, 0.035215, 0.132059, 0.228503), i6)
                + dot(vec4(-0.077943, 0.203871, 0.118008, -0.125550), i7)
                + dot(vec4(-0.181806, 0.160462, 0.034216, -0.090929), i8)
            );
        
            i0 = fetch(images[1], x0, y0);
            i1 = fetch(images[1], x1, y0);
            i2 = fetch(images[1], x2, y0);
            i3 = fetch(images[1], x0, y1);
            i4 = fetch(images[1], x1, y1);
            i5 = fetch(images[1], x2, y1);
            i6 = fetch(images[1], x0, y2);
            i7 = fetch(images[1], x1, y2);
            i8 = fetch(images[1], x2, y2);
        
            sum += vec4(
                dot(vec4(0.067661, 0.106654, -0.346868, -0.029397), i0)
                + dot(vec4(0.005794, 0.180614, -0.175845, -0.119345), i1)
                + dot(vec4(-0.107975, 0.093622, 0.080632, -0.001696), i2)
                + dot(vec4(0.114172, 0.101427, -0.032701, 0.030193), i3)
                + dot(vec4(0.181484, 0.147962, 0.088164, 0.194187), i4)
                + dot(vec4(0.129672, -0.024861, 0.102455, 0.173598), i5)
                + dot(vec4(0.128836, 0.122886, -0.012981, 0.021975), i6)
                + dot(vec4(0.090494, 0.096182, -0.029375, 0.207827), i7)
                + dot(vec4(0.179150, -0.011166, -0.054461, 0.132832), i8),
                dot(vec4(-0.112124, -0.038106, 0.132795, 0.034871), i0)
                + dot(vec4(-0.048312, 0.019883, -0.030422, -0.007050), i1)
                + dot(vec4(-0.026178, -0.058559, -0.083419, -0.134706), i2)
                + dot(vec4(-0.050650, -0.199273, 0.147162, 0.187357), i3)
                + dot(vec4(-0.086957, -0.097120, 0.029290, 0.248173), i4)
                + dot(vec4(0.011457, 0.009011, 0.013382, -0.055421), i5)
                + dot(vec4(-0.018054, -0.058278, -0.004193, 0.074928), i6)
                + dot(vec4(-0.044919, -0.064952, -0.007282, 0.149853), i7)
                + dot(vec4(-0.027578, -0.018543, -0.016641, 0.118591), i8),
                dot(vec4(-0.158383, 0.348302, 0.870982, -0.065935), i0)
                + dot(vec4(-0.110916, 0.187891, 0.246219, -0.235085), i1)
                + dot(vec4(-0.188544, 0.156970, 0.075429, 0.052589), i2)
                + dot(vec4(-0.060657, -0.153042, 0.308478, -0.036892), i3)
                + dot(vec4(0.181859, -0.239835, 0.014044, 0.122514), i4)
                + dot(vec4(0.050220, -0.060645, 0.026941, 0.006089), i5)
                + dot(vec4(0.189977, -0.095400, 0.001510, 0.023420), i6)
                + dot(vec4(0.080997, 0.084060, 0.016502, 0.052419), i7)
                + dot(vec4(0.217160, -0.013256, 0.010517, -0.020019), i8),
                dot(vec4(-0.094113, 0.128973, 0.367736, 0.033257), i0)
                + dot(vec4(0.033356, 0.130655, 0.129198, -0.010758), i1)
                + dot(vec4(-0.071448, 0.045425, -0.071222, 0.021937), i2)
                + dot(vec4(-0.058751, -0.231469, 0.442844, -0.025595), i3)
                + dot(vec4(-0.105203, -0.200304, 0.067367, -0.033936), i4)
                + dot(vec4(0.011231, -0.089077, 0.042576, 0.140426), i5)
                + dot(vec4(0.007203, -0.053511, 0.009248, 0.080204), i6)
                + dot(vec4(-0.014362, -0.142440, 0.037834, -0.027280), i7)
                + dot(vec4(0.080850, -0.028769, -0.001051, -0.103908), i8)
            );
        
            i0 = fetch(images[2], x0, y0);
            i1 = fetch(images[2], x1, y0);
            i2 = fetch(images[2], x2, y0);
            i3 = fetch(images[2], x0, y1);
            i4 = fetch(images[2], x1, y1);
            i5 = fetch(images[2], x2, y1);
            i6 = fetch(images[2], x0, y2);
            i7 = fetch(images[2], x1, y2);
            i8 = fetch(images[2], x2, y2);
        
            sum += vec4(
                dot(vec4(-0.121072, 0.067748, 0.073873, 0.002645), i0)
                + dot(vec4(-0.019479, 0.070378, -0.017686, 0.124333), i1)
                + dot(vec4(0.057891, -0.020229, -0.185148, 0.049022), i2)
                + dot(vec4(-0.051389, 0.060234, -0.055919, 0.004711), i3)
                + dot(vec4(0.095851, 0.076892, -0.152891, 0.312376), i4)
                + dot(vec4(-0.049233, 0.022821, 0.140662, -0.024592), i5)
                + dot(vec4(-0.073710, 0.091729, 0.081668, 0.093230), i6)
                + dot(vec4(0.049146, 0.100351, 0.064407, 0.182016), i7)
                + dot(vec4(0.149563, 0.117956, 0.140461, 0.086808), i8),
                dot(vec4(0.032594, 0.019754, -0.003681, -0.005631), i0)
                + dot(vec4(0.052937, -0.023264, 0.038592, -0.063270), i1)
                + dot(vec4(0.039585, 0.011868, 0.004756, -0.024194), i2)
                + dot(vec4(0.028045, -0.080646, 0.042263, -0.131163), i3)
                + dot(vec4(-0.145868, -0.085393, -0.203278, -0.086231), i4)
                + dot(vec4(-0.070937, 0.059199, -0.056143, 0.035254), i5)
                + dot(vec4(0.040369, -0.084914, 0.044373, -0.017594), i6)
                + dot(vec4(-0.080927, -0.048625, 0.127471, -0.067062), i7)
                + dot(vec4(-0.005312, -0.031914, 0.050351, -0.029937), i8),
                dot(vec4(-0.142623, -0.120137, -0.220214, 0.170556), i0)
                + dot(vec4(-0.541811, -0.104829, -1.207205, 0.014749), i1)
                + dot(vec4(-0.138705, -0.100479, -0.208176, -0.056370), i2)
                + dot(vec4(-0.203636, -0.126183, -0.050579, -0.121025), i3)
                + dot(vec4(-0.168876, 0.178304, 0.633636, -0.232490), i4)
                + dot(vec4(0.164872, -0.011377, 0.162969, 0.154618), i5)
                + dot(vec4(-0.070441, -0.115503, 0.158659, -0.037455), i6)
                + dot(vec4(-0.069465, -0.190653, 0.102816, 0.105591), i7)
                + dot(vec4(-0.155478, -0.085693, 0.112515, -0.090016), i8),
                dot(vec4(0.014590, -0.023782, 0.355657, 0.044607), i0)
                + dot(vec4(0.224894, -0.028989, 0.051882, 0.117796), i1)
                + dot(vec4(-0.004557, 0.074537, 0.072419, 0.055204), i2)
                + dot(vec4(-0.038613, 0.034893, -0.139449, -0.169562), i3)
                + dot(vec4(0.112400, 0.148395, -0.217268, -0.116739), i4)
                + dot(vec4(-0.090221, 0.019627, -0.245100, -0.009099), i5)
                + dot(vec4(0.051193, -0.060278, 0.126521, -0.048313), i6)
                + dot(vec4(0.162735, -0.074814, 0.197875, -0.187863), i7)
                + dot(vec4(-0.066509, -0.108496, -0.011558, -0.206753), i8)
            );
        
        gl_FragColor = sum + vec4(0.016442, 0.005887, 0.099937, 0.045040);
    
        }
    )
