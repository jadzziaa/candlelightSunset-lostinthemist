xof 0303txt 0032
template ColorRGBA {
 <35ff44e0-6c7c-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <d3e16e81-7835-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template Material {
 <3d82ab4d-62da-11cf-ab39-0020af71e433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <a42790e1-7810-11cf-8f52-0040333594a3>
 STRING filename;
}

template Frame {
 <3d82ab46-62da-11cf-ab39-0020af71e433>
 [...]
}

template Matrix4x4 {
 <f6f23f45-7686-11cf-8f52-0040333594a3>
 array FLOAT matrix[16];
}

template FrameTransformMatrix {
 <f6f23f41-7686-11cf-8f52-0040333594a3>
 Matrix4x4 frameMatrix;
}

template Vector {
 <3d82ab5e-62da-11cf-ab39-0020af71e433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template MeshFace {
 <3d82ab5f-62da-11cf-ab39-0020af71e433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
 <3d82ab44-62da-11cf-ab39-0020af71e433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshMaterialList {
 <f6f23f42-7686-11cf-8f52-0040333594a3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material <3d82ab4d-62da-11cf-ab39-0020af71e433>]
}

template Coords2d {
 <f6f23f44-7686-11cf-8f52-0040333594a3>
 FLOAT u;
 FLOAT v;
}

template MeshTextureCoords {
 <f6f23f40-7686-11cf-8f52-0040333594a3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9e415a43-7ba6-4a73-8743-b73d47e88476>
 DWORD AnimTicksPerSecond;
}

template Animation {
 <3d82ab4f-62da-11cf-ab39-0020af71e433>
 [...]
}

template AnimationSet {
 <3d82ab50-62da-11cf-ab39-0020af71e433>
 [Animation <3d82ab4f-62da-11cf-ab39-0020af71e433>]
}

template FloatKeys {
 <10dd46a9-775b-11cf-8f52-0040333594a3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <f406b180-7b3b-11cf-8f52-0040333594a3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10dd46a8-775b-11cf-8f52-0040333594a3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}


Material shoe {
 1.000000;1.000000;1.000000;1.000000;;
 10.000002;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;

 TextureFilename {
  "Sneakers_Blue.png";
 }
}

Frame F_Shoes {
 

 FrameTransformMatrix {
  1.000000,0.000000,0.000000,0.000000,0.000000,-0.000000,-1.000000,0.000000,0.000000,1.000000,-0.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
 }

 Mesh F_Shoes {
  138;
  -0.085100;-0.003000;0.103911;,
  -0.104315;-0.003000;0.103668;,
  -0.120244;-0.003000;0.101711;,
  -0.128373;-0.003000;0.058322;,
  -0.081875;-0.003000;0.058873;,
  -0.082877;-0.003000;0.083043;,
  -0.126427;-0.003000;0.082522;,
  -0.124804;0.019517;-0.027012;,
  -0.100822;0.020979;-0.035352;,
  -0.102540;-0.003000;-0.042944;,
  -0.125762;-0.003000;-0.026767;,
  -0.078817;0.033845;0.100108;,
  -0.082877;-0.003000;0.083043;,
  -0.077537;0.029308;0.076605;,
  -0.085100;-0.003000;0.103911;,
  -0.103638;0.073543;0.092291;,
  -0.119676;0.072704;0.081257;,
  -0.125726;0.037131;0.097760;,
  -0.103820;0.035488;0.104542;,
  -0.130552;0.036369;0.073852;,
  -0.128373;-0.003000;0.058322;,
  -0.126427;-0.003000;0.082522;,
  -0.132437;0.035607;0.058437;,
  -0.135582;0.021166;0.007705;,
  -0.103501;0.069725;0.027973;,
  -0.126845;0.063446;0.047723;,
  -0.074838;-0.003000;0.019263;,
  -0.074976;0.014569;-0.024850;,
  -0.073958;0.019670;0.019666;,
  -0.072432;-0.003000;-0.026153;,
  -0.134665;-0.003000;0.031010;,
  -0.135804;0.028386;0.032869;,
  -0.137367;-0.003000;0.004057;,
  -0.085792;0.019330;-0.029891;,
  -0.085618;-0.003000;-0.038153;,
  -0.081504;0.059209;0.052137;,
  -0.077478;0.024770;0.058421;,
  -0.085872;0.070152;0.081374;,
  -0.104315;-0.003000;0.103668;,
  -0.125762;-0.003000;-0.026767;,
  -0.102540;-0.003000;-0.042944;,
  -0.115080;0.102307;0.080566;,
  -0.099722;0.103110;0.086992;,
  -0.109680;0.060220;0.064669;,
  -0.082708;0.099863;0.080678;,
  -0.082470;0.089383;0.056011;,
  -0.099590;0.096219;0.027012;,
  -0.117286;0.093441;0.056460;,
  -0.137367;-0.003000;0.004057;,
  -0.134665;-0.003000;0.031010;,
  -0.085618;-0.003000;-0.038153;,
  -0.074838;-0.003000;0.019263;,
  -0.120244;-0.003000;0.101711;,
  0.079925;-0.003000;0.059112;,
  0.126517;-0.003000;0.059071;,
  0.082555;-0.003000;0.081881;,
  0.119724;-0.003000;0.100792;,
  0.106739;-0.003000;0.103476;,
  0.085185;-0.003000;0.102080;,
  0.124425;-0.003000;0.080300;,
  0.103853;-0.003000;-0.041838;,
  0.102083;0.021161;-0.034131;,
  0.123798;0.019655;-0.025079;,
  0.124810;-0.003000;-0.024920;,
  0.078992;0.033604;0.098456;,
  0.082555;-0.003000;0.081881;,
  0.085185;-0.003000;0.102080;,
  0.077308;0.029186;0.075566;,
  0.118580;0.072704;0.085353;,
  0.102294;0.073543;0.093536;,
  0.106200;0.035204;0.104387;,
  0.126692;0.036803;0.099724;,
  0.126517;-0.003000;0.059071;,
  0.130740;0.036061;0.076921;,
  0.124425;-0.003000;0.080300;,
  0.132177;0.035319;0.062001;,
  0.101502;0.069725;0.027973;,
  0.137786;0.021261;0.008498;,
  0.125126;0.063446;0.050653;,
  0.077305;0.014838;-0.023623;,
  0.079876;-0.003000;0.022346;,
  0.074824;0.019803;0.022766;,
  0.074883;-0.003000;-0.024896;,
  0.133082;-0.003000;0.032712;,
  0.134346;0.028290;0.034513;,
  0.139208;-0.003000;0.004851;,
  0.087563;0.019555;-0.028516;,
  0.087478;-0.003000;-0.036839;,
  0.081094;0.059209;0.051853;,
  0.075625;0.024769;0.058726;,
  0.086656;0.070152;0.081863;,
  0.106739;-0.003000;0.103476;,
  0.103853;-0.003000;-0.041838;,
  0.124810;-0.003000;-0.024920;,
  0.114036;0.102311;0.080375;,
  0.108788;0.060361;0.064736;,
  0.098440;0.103114;0.088211;,
  0.082798;0.089386;0.055765;,
  0.083464;0.099867;0.081173;,
  0.097681;0.096223;0.027038;,
  0.116360;0.093444;0.059292;,
  0.139208;-0.003000;0.004851;,
  0.133082;-0.003000;0.032712;,
  0.087478;-0.003000;-0.036839;,
  0.079876;-0.003000;0.022346;,
  0.119724;-0.003000;0.100792;,
  -0.081875;-0.003000;0.058873;,
  0.079925;-0.003000;0.059112;,
  0.074883;-0.003000;-0.024896;,
  -0.072432;-0.003000;-0.026153;,
  -0.115080;0.102307;0.080566;,
  -0.103638;0.073543;0.092291;,
  -0.099722;0.103110;0.086992;,
  -0.119676;0.072704;0.081257;,
  -0.099590;0.096219;0.027012;,
  -0.126845;0.063446;0.047723;,
  -0.117286;0.093441;0.056460;,
  -0.103501;0.069725;0.027973;,
  -0.082708;0.099863;0.080678;,
  -0.081504;0.059209;0.052137;,
  -0.082470;0.089383;0.056011;,
  -0.085872;0.070152;0.081374;,
  -0.099722;0.103110;0.086992;,
  -0.103638;0.073543;0.092291;,
  0.098440;0.103114;0.088211;,
  0.118580;0.072704;0.085353;,
  0.114036;0.102311;0.080375;,
  0.102294;0.073543;0.093536;,
  0.116360;0.093444;0.059292;,
  0.101502;0.069725;0.027973;,
  0.097681;0.096223;0.027038;,
  0.125126;0.063446;0.050653;,
  0.082798;0.089386;0.055765;,
  0.086656;0.070152;0.081863;,
  0.083464;0.099867;0.081173;,
  0.081094;0.059209;0.051853;,
  0.102294;0.073543;0.093536;,
  0.098440;0.103114;0.088211;;
  156;
  3;0,1,2;,
  3;3,4,5;,
  3;2,6,0;,
  3;7,8,9;,
  3;9,10,7;,
  3;11,12,13;,
  3;12,11,14;,
  3;15,16,17;,
  3;17,18,15;,
  3;19,20,21;,
  3;20,19,22;,
  3;7,23,24;,
  3;23,25,24;,
  3;26,27,28;,
  3;27,26,29;,
  3;23,30,31;,
  3;30,23,32;,
  3;8,24,33;,
  3;33,27,34;,
  3;27,29,34;,
  3;35,28,27;,
  3;28,35,36;,
  3;35,13,36;,
  3;13,35,11;,
  3;35,37,11;,
  3;11,18,38;,
  3;38,14,11;,
  3;16,25,22;,
  3;16,19,17;,
  3;19,16,22;,
  3;25,31,22;,
  3;31,25,23;,
  3;4,39,40;,
  3;41,42,43;,
  3;43,44,45;,
  3;45,46,43;,
  3;43,46,47;,
  3;41,43,47;,
  3;23,7,32;,
  3;7,10,32;,
  3;7,24,8;,
  3;39,4,48;,
  3;4,3,49;,
  3;4,40,50;,
  3;27,24,35;,
  3;33,34,8;,
  3;8,34,9;,
  3;33,24,27;,
  3;4,50,51;,
  3;11,37,15;,
  3;15,18,11;,
  3;18,17,52;,
  3;52,38,18;,
  3;43,42,44;,
  3;53,54,55;,
  3;56,57,58;,
  3;58,54,59;,
  3;60,61,62;,
  3;62,63,60;,
  3;64,65,66;,
  3;65,64,67;,
  3;68,69,70;,
  3;70,71,68;,
  3;72,73,74;,
  3;73,72,75;,
  3;76,77,62;,
  3;77,76,78;,
  3;79,80,81;,
  3;80,79,82;,
  3;83,77,84;,
  3;77,83,85;,
  3;61,86,76;,
  3;82,79,86;,
  3;86,87,82;,
  3;88,81,89;,
  3;81,88,79;,
  3;64,90,88;,
  3;88,67,64;,
  3;67,88,89;,
  3;70,64,66;,
  3;66,91,70;,
  3;78,68,75;,
  3;68,73,75;,
  3;73,68,71;,
  3;78,84,77;,
  3;84,78,75;,
  3;53,92,93;,
  3;94,95,96;,
  3;97,98,95;,
  3;97,95,99;,
  3;95,100,99;,
  3;94,100,95;,
  3;77,85,62;,
  3;62,85,63;,
  3;62,61,76;,
  3;93,101,53;,
  3;53,101,102;,
  3;53,103,92;,
  3;79,88,76;,
  3;86,61,60;,
  3;60,87,86;,
  3;86,79,76;,
  3;53,104,103;,
  3;69,90,70;,
  3;70,90,64;,
  3;71,70,105;,
  3;70,91,105;,
  3;95,98,96;,
  3;74,71,105;,
  3;71,74,73;,
  3;72,84,75;,
  3;84,72,83;,
  3;13,106,36;,
  3;106,13,12;,
  3;106,28,36;,
  3;28,106,26;,
  3;107,67,89;,
  3;67,107,65;,
  3;81,107,89;,
  3;107,81,80;,
  3;17,21,52;,
  3;21,17,19;,
  3;31,20,22;,
  3;20,31,30;,
  3;4,49,48;,
  3;53,102,54;,
  3;58,59,56;,
  3;55,54,58;,
  3;0,6,3;,
  3;3,5,0;,
  3;103,104,108;,
  3;51,50,109;,
  3;110,111,112;,
  3;111,110,113;,
  3;114,115,116;,
  3;115,114,117;,
  3;118,119,120;,
  3;119,118,121;,
  3;116,113,110;,
  3;113,116,115;,
  3;120,117,114;,
  3;117,120,119;,
  3;122,121,118;,
  3;121,122,123;,
  3;124,125,126;,
  3;125,124,127;,
  3;128,129,130;,
  3;129,128,131;,
  3;132,133,134;,
  3;133,132,135;,
  3;126,131,128;,
  3;131,126,125;,
  3;130,135,132;,
  3;135,130,129;,
  3;134,136,137;,
  3;136,134,133;;

  MeshNormals {
   138;
   -0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000002;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   -0.666414;0.409463;-0.623083;,
   0.016012;0.564860;-0.825032;,
   -0.105657;0.240070;-0.964989;,
   -0.792935;0.027152;-0.608701;,
   0.750213;0.123875;0.649489;,
   0.985413;-0.153990;0.072443;,
   0.999396;-0.004436;0.034465;,
   0.598392;-0.019355;0.800970;,
   -0.021138;0.302698;0.952852;,
   -0.849048;0.274179;0.451602;,
   -0.737407;0.159710;0.656295;,
   -0.038127;0.154750;0.987218;,
   -0.985204;0.090581;0.145493;,
   -0.986323;-0.082008;0.142977;,
   -0.977887;-0.086693;0.190318;,
   -0.989611;0.081475;0.118453;,
   -0.937114;0.293466;-0.188934;,
   0.052879;0.541656;-0.838936;,
   -0.911657;0.360655;-0.197001;,
   0.996102;-0.018404;0.086265;,
   0.819940;0.369032;-0.437623;,
   0.997215;0.069148;0.027936;,
   0.911795;0.160038;-0.378177;,
   -0.990705;-0.018211;0.134803;,
   -0.994198;0.101837;0.034639;,
   -0.988541;0.075858;-0.130505;,
   0.440005;0.562473;-0.700014;,
   0.441665;0.261311;-0.858282;,
   0.959525;0.224671;-0.169808;,
   0.998504;-0.022436;0.049867;,
   0.850737;0.171149;0.496945;,
   -0.032478;0.017095;0.999326;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   0.632117;0.343477;-0.694587;,
   0.031095;0.455769;-0.889555;,
   0.246218;0.963843;-0.101904;,
   -0.473456;0.587237;-0.656499;,
   -0.710590;0.695197;0.108456;,
   0.067875;0.712018;0.698873;,
   0.943852;0.264880;0.197437;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000000;,
   -0.615460;-0.050423;0.786554;,
   -0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;-0.000000;,
   0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;-0.000000;,
   0.000000;-1.000000;0.000000;,
   0.114253;0.261789;-0.958339;,
   -0.007755;0.550579;-0.834747;,
   0.659642;0.413338;-0.627714;,
   0.785650;0.030790;-0.617904;,
   -0.751041;0.168832;0.638305;,
   -0.982713;-0.144248;0.116052;,
   -0.647929;-0.082026;0.757272;,
   -0.996702;0.012460;0.080193;,
   0.785707;0.281885;0.550641;,
   -0.076315;0.195505;0.977729;,
   -0.002711;0.194374;0.980924;,
   0.714854;0.152669;0.682405;,
   0.981804;-0.124451;0.143435;,
   0.989150;0.073869;0.126990;,
   0.975747;-0.153690;0.155876;,
   0.993803;0.074068;0.082881;,
   0.015450;0.583568;-0.811917;,
   0.939045;0.299930;-0.168039;,
   0.896901;0.392067;-0.204581;,
   -0.817875;0.307307;-0.486459;,
   -0.984275;-0.176635;0.001762;,
   -0.999550;-0.004686;-0.029626;,
   -0.905320;0.199992;-0.374700;,
   0.977403;-0.032530;0.208867;,
   0.991671;0.073069;0.106066;,
   0.989927;0.060894;-0.127812;,
   -0.462579;0.522807;-0.716027;,
   -0.459300;0.309015;-0.832798;,
   -0.967119;0.215942;-0.134350;,
   -0.997995;-0.000283;0.063296;,
   -0.858184;0.120151;0.499084;,
   0.070860;-0.022797;0.997226;,
   0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000000;,
   -0.650303;0.335463;-0.681595;,
   -0.244955;0.965235;-0.091206;,
   -0.031131;0.475286;-0.879281;,
   0.724381;0.681265;0.105595;,
   0.498731;0.585584;-0.639030;,
   -0.073542;0.711657;0.698667;,
   -0.956928;0.244724;0.156206;,
   -0.000000;-1.000000;0.000000;,
   -0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   0.000002;-1.000000;0.000000;,
   0.660968;-0.100813;0.743612;,
   0.986974;-0.136182;0.085656;,
   -0.984466;-0.158725;0.075052;,
   -0.000000;-1.000000;0.000000;,
   0.000000;-1.000000;0.000000;,
   -0.772736;0.191713;0.605082;,
   -0.021138;0.302698;0.952852;,
   0.035009;0.125217;0.991512;,
   -0.849048;0.274179;0.451602;,
   0.082850;0.086684;-0.992785;,
   -0.911657;0.360655;-0.197001;,
   -0.943850;0.298085;-0.142456;,
   0.052879;0.541656;-0.838936;,
   0.727422;-0.029341;0.685563;,
   0.959525;0.224671;-0.169808;,
   0.958724;0.019592;-0.283664;,
   0.850737;0.171149;0.496945;,
   0.035009;0.125217;0.991512;,
   -0.021138;0.302698;0.952852;,
   -0.009305;0.176043;0.984339;,
   0.785707;0.281885;0.550641;,
   0.770637;0.244905;0.588337;,
   -0.076315;0.195505;0.977729;,
   0.923766;0.288879;-0.251406;,
   0.015450;0.583568;-0.811917;,
   0.035422;0.086035;-0.995662;,
   0.896901;0.392067;-0.204581;,
   -0.990577;0.030135;-0.133599;,
   -0.858184;0.120151;0.499084;,
   -0.799722;-0.017516;0.600115;,
   -0.967119;0.215942;-0.134350;,
   -0.076315;0.195505;0.977729;,
   -0.009305;0.176043;0.984339;;
   156;
   3;0,1,2;,
   3;3,4,5;,
   3;2,6,0;,
   3;7,8,9;,
   3;9,10,7;,
   3;11,12,13;,
   3;12,11,14;,
   3;15,16,17;,
   3;17,18,15;,
   3;19,20,21;,
   3;20,19,22;,
   3;7,23,24;,
   3;23,25,24;,
   3;26,27,28;,
   3;27,26,29;,
   3;23,30,31;,
   3;30,23,32;,
   3;8,24,33;,
   3;33,27,34;,
   3;27,29,34;,
   3;35,28,27;,
   3;28,35,36;,
   3;35,13,36;,
   3;13,35,11;,
   3;35,37,11;,
   3;11,18,38;,
   3;38,14,11;,
   3;16,25,22;,
   3;16,19,17;,
   3;19,16,22;,
   3;25,31,22;,
   3;31,25,23;,
   3;4,39,40;,
   3;41,42,43;,
   3;43,44,45;,
   3;45,46,43;,
   3;43,46,47;,
   3;41,43,47;,
   3;23,7,32;,
   3;7,10,32;,
   3;7,24,8;,
   3;39,4,48;,
   3;4,3,49;,
   3;4,40,50;,
   3;27,24,35;,
   3;33,34,8;,
   3;8,34,9;,
   3;33,24,27;,
   3;4,50,51;,
   3;11,37,15;,
   3;15,18,11;,
   3;18,17,52;,
   3;52,38,18;,
   3;43,42,44;,
   3;53,54,55;,
   3;56,57,58;,
   3;58,54,59;,
   3;60,61,62;,
   3;62,63,60;,
   3;64,65,66;,
   3;65,64,67;,
   3;68,69,70;,
   3;70,71,68;,
   3;72,73,74;,
   3;73,72,75;,
   3;76,77,62;,
   3;77,76,78;,
   3;79,80,81;,
   3;80,79,82;,
   3;83,77,84;,
   3;77,83,85;,
   3;61,86,76;,
   3;82,79,86;,
   3;86,87,82;,
   3;88,81,89;,
   3;81,88,79;,
   3;64,90,88;,
   3;88,67,64;,
   3;67,88,89;,
   3;70,64,66;,
   3;66,91,70;,
   3;78,68,75;,
   3;68,73,75;,
   3;73,68,71;,
   3;78,84,77;,
   3;84,78,75;,
   3;53,92,93;,
   3;94,95,96;,
   3;97,98,95;,
   3;97,95,99;,
   3;95,100,99;,
   3;94,100,95;,
   3;77,85,62;,
   3;62,85,63;,
   3;62,61,76;,
   3;93,101,53;,
   3;53,101,102;,
   3;53,103,92;,
   3;79,88,76;,
   3;86,61,60;,
   3;60,87,86;,
   3;86,79,76;,
   3;53,104,103;,
   3;69,90,70;,
   3;70,90,64;,
   3;71,70,105;,
   3;70,91,105;,
   3;95,98,96;,
   3;74,71,105;,
   3;71,74,73;,
   3;72,84,75;,
   3;84,72,83;,
   3;13,106,36;,
   3;106,13,12;,
   3;106,28,36;,
   3;28,106,26;,
   3;107,67,89;,
   3;67,107,65;,
   3;81,107,89;,
   3;107,81,80;,
   3;17,21,52;,
   3;21,17,19;,
   3;31,20,22;,
   3;20,31,30;,
   3;4,49,48;,
   3;53,102,54;,
   3;58,59,56;,
   3;55,54,58;,
   3;0,6,3;,
   3;3,5,0;,
   3;103,104,108;,
   3;51,50,109;,
   3;110,111,112;,
   3;111,110,113;,
   3;114,115,116;,
   3;115,114,117;,
   3;118,119,120;,
   3;119,118,121;,
   3;116,113,110;,
   3;113,116,115;,
   3;120,117,114;,
   3;117,120,119;,
   3;122,121,118;,
   3;121,122,123;,
   3;124,125,126;,
   3;125,124,127;,
   3;128,129,130;,
   3;129,128,131;,
   3;132,133,134;,
   3;133,132,135;,
   3;126,131,128;,
   3;131,126,125;,
   3;130,135,132;,
   3;135,130,129;,
   3;134,136,137;,
   3;136,134,133;;
  }

  MeshMaterialList {
   1;
   156;
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0,
   0;
   { shoe }
  }

  MeshTextureCoords c1 {
   138;
   0.368656;0.181893;,
   0.354976;0.179871;,
   0.341903;0.182094;,
   0.340009;0.210754;,
   0.372964;0.213245;,
   0.370810;0.194865;,
   0.340451;0.193468;,
   0.320018;0.142191;,
   0.335371;0.143027;,
   0.333155;0.151304;,
   0.317372;0.151304;,
   0.354037;0.034893;,
   0.377328;0.029712;,
   0.356451;0.035535;,
   0.377328;0.001668;,
   0.331573;0.032675;,
   0.317865;0.032922;,
   0.308253;0.034334;,
   0.332787;0.034405;,
   0.308314;0.036972;,
   0.286517;0.051033;,
   0.286517;0.022847;,
   0.307046;0.055018;,
   0.300411;0.123944;,
   0.335011;0.072891;,
   0.315540;0.053729;,
   0.377328;0.099872;,
   0.364690;0.141995;,
   0.359587;0.093359;,
   0.377328;0.151304;,
   0.286517;0.085665;,
   0.303508;0.089095;,
   0.286517;0.151304;,
   0.351745;0.142019;,
   0.355961;0.151304;,
   0.347156;0.056697;,
   0.358079;0.054341;,
   0.345280;0.032429;,
   0.332291;0.001668;,
   0.343885;0.288845;,
   0.355122;0.296844;,
   0.318244;0.025714;,
   0.336227;0.025430;,
   0.333836;0.033260;,
   0.354210;0.025147;,
   0.358864;0.039556;,
   0.333988;0.066670;,
   0.303876;0.036147;,
   0.331718;0.273622;,
   0.335737;0.242440;,
   0.372065;0.297957;,
   0.376323;0.251119;,
   0.286517;0.001668;,
   0.627225;0.213245;,
   0.660180;0.210754;,
   0.629380;0.194865;,
   0.656770;0.181876;,
   0.644152;0.178857;,
   0.631534;0.181675;,
   0.658475;0.193720;,
   0.667034;0.147651;,
   0.667080;0.139753;,
   0.681197;0.139185;,
   0.682817;0.147651;,
   0.640418;0.026688;,
   0.622958;0.029413;,
   0.622958;0.003248;,
   0.638581;0.031150;,
   0.682324;0.032922;,
   0.668616;0.032675;,
   0.667403;0.027588;,
   0.688833;0.027835;,
   0.709369;0.049131;,
   0.689203;0.034327;,
   0.709369;0.028110;,
   0.690194;0.051430;,
   0.665179;0.072891;,
   0.695147;0.125324;,
   0.684649;0.053729;,
   0.636460;0.132377;,
   0.622958;0.099872;,
   0.637043;0.093359;,
   0.622958;0.147651;,
   0.709369;0.093120;,
   0.692204;0.088377;,
   0.709369;0.147651;,
   0.648438;0.139944;,
   0.644228;0.147651;,
   0.653033;0.056697;,
   0.637354;0.054341;,
   0.654909;0.032429;,
   0.667898;0.003373;,
   0.642794;0.297804;,
   0.657214;0.287758;,
   0.681945;0.022859;,
   0.666353;0.033260;,
   0.663962;0.022575;,
   0.641325;0.039556;,
   0.645979;0.022292;,
   0.666201;0.066670;,
   0.696313;0.036147;,
   0.669381;0.272485;,
   0.664452;0.242440;,
   0.630145;0.298462;,
   0.623866;0.251119;,
   0.709369;0.003497;,
   0.377328;0.052433;,
   0.622958;0.051984;,
   0.620506;0.288994;,
   0.380694;0.290005;,
   0.270450;0.943433;,
   0.248433;0.987769;,
   0.247754;0.942287;,
   0.268436;0.990529;,
   0.342481;0.944287;,
   0.289963;0.990529;,
   0.297316;0.943860;,
   0.302868;0.990529;,
   0.375316;0.946849;,
   0.321158;0.990529;,
   0.354803;0.946849;,
   0.375719;0.990529;,
   0.399227;0.946422;,
   0.401203;0.990529;,
   0.754202;0.942809;,
   0.729452;0.986407;,
   0.712167;0.943875;,
   0.755664;0.982152;,
   0.658321;0.942874;,
   0.669293;0.986407;,
   0.651994;0.946815;,
   0.703214;0.986407;,
   0.635828;0.948112;,
   0.623833;0.986407;,
   0.609996;0.946798;,
   0.644884;0.986407;,
   0.595671;0.985980;,
   0.595310;0.946798;;
  }

  XSkinMeshHeader {
   1;
   2;
   4;
  }

  SkinWeights {
   "Bip01_R_Foot";
   42;
   0,
   1,
   2,
   3,
   4,
   5,
   6,
   7,
   8,
   9,
   10,
   11,
   12,
   13,
   14,
   17,
   18,
   19,
   20,
   21,
   22,
   23,
   26,
   27,
   28,
   29,
   30,
   31,
   32,
   33,
   34,
   36,
   38,
   39,
   40,
   48,
   49,
   50,
   51,
   52,
   106,
   109;
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000;
   0.000001,-1.000000,0.000000,0.000000,-1.000002,-0.000001,0.000000,0.000000,-0.000000,-0.000000,-1.000000,0.000000,0.065978,-0.106481,0.051010,1.000000;;
  }

  SkinWeights {
   "Bip01_L_Calf";
   27;
   68,
   69,
   76,
   78,
   88,
   90,
   94,
   95,
   96,
   97,
   98,
   99,
   100,
   124,
   125,
   126,
   127,
   128,
   129,
   130,
   131,
   132,
   133,
   134,
   135,
   136,
   137;
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000;
   0.114860,-0.993257,0.015727,0.000000,-0.984078,-0.115932,-0.134723,0.000000,0.135638,-0.000002,-0.990758,0.000000,0.252619,0.113412,0.057753,1.000000;;
  }

  SkinWeights {
   "Bip01_R_Calf";
   27;
   15,
   16,
   24,
   25,
   35,
   37,
   41,
   42,
   43,
   44,
   45,
   46,
   47,
   110,
   111,
   112,
   113,
   114,
   115,
   116,
   117,
   118,
   119,
   120,
   121,
   122,
   123;
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000;
   -0.114861,-0.993257,-0.015723,0.000000,-0.984079,0.115932,-0.134723,0.000000,0.135638,-0.000001,-0.990758,0.000000,0.252619,-0.113412,0.057753,1.000000;;
  }

  SkinWeights {
   "Bip01_L_Foot";
   42;
   53,
   54,
   55,
   56,
   57,
   58,
   59,
   60,
   61,
   62,
   63,
   64,
   65,
   66,
   67,
   70,
   71,
   72,
   73,
   74,
   75,
   77,
   79,
   80,
   81,
   82,
   83,
   84,
   85,
   86,
   87,
   89,
   91,
   92,
   93,
   101,
   102,
   103,
   104,
   105,
   107,
   108;
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000,
   1.000000;
   0.000000,-1.000000,0.000003,0.000000,-1.000000,-0.000000,0.000000,0.000000,-0.000000,-0.000003,-1.000000,0.000000,0.065978,0.106481,0.051010,1.000000;;
  }
 }
}

Frame Bip01_R_Calf {
 

 FrameTransformMatrix {
  -0.114861,0.135638,0.984076,0.000000,-0.993257,-0.000001,-0.115932,0.000000,-0.015723,-0.990759,0.134724,0.000000,-0.082723,0.022954,-0.269525,1.000000;;
 }

 Frame Bip01_R_Foot {
  

  FrameTransformMatrix {
   0.984078,-0.115932,0.134723,0.000000,0.114861,0.993258,0.015724,0.000000,-0.135638,0.000001,0.990759,0.000000,0.206841,-0.000000,-0.000000,1.000000;;
  }
 }
}

Frame Bip01_L_Calf {
 

 FrameTransformMatrix {
  0.114860,0.135638,0.984078,0.000000,-0.993257,-0.000002,0.115932,0.000000,0.015727,-0.990759,0.134724,0.000000,0.082723,0.022955,-0.269526,1.000000;;
 }

 Frame Bip01_L_Foot {
  

  FrameTransformMatrix {
   0.984078,0.115932,0.134723,0.000000,-0.114860,0.993258,-0.015724,0.000000,-0.135638,-0.000001,0.990758,0.000000,0.206841,0.000000,-0.000000,1.000000;;
  }
 }
}

AnimTicksPerSecond  {
 4800;
}

AnimationSet Ref {
 

 Animation {
  
  { Bip01_R_Calf }

  AnimationKey S {
   1;
   1;
   0;3;0.999999,1.000000,1.000000;;;
  }

  AnimationKey R {
   0;
   1;
   0;4;0.504941,-0.433133,0.495009,-0.558924;;;
  }

  AnimationKey T {
   2;
   1;
   0;3;-0.082723,0.022954,-0.269525;;;
  }
 }

 Animation {
  
  { Bip01_R_Foot }

  AnimationKey S {
   1;
   1;
   0;3;1.000000,1.000001,1.000000;;;
  }

  AnimationKey R {
   0;
   1;
   0;4;0.996004,-0.003947,0.067861,0.057930;;;
  }

  AnimationKey T {
   2;
   1;
   0;3;0.206841,-0.000000,-0.000000;;;
  }
 }

 Animation {
  
  { Bip01_L_Calf }

  AnimationKey S {
   1;
   1;
   0;3;1.000000,1.000000,1.000000;;;
  }

  AnimationKey R {
   0;
   1;
   0;4;0.558924,-0.495010,0.433132,-0.504942;;;
  }

  AnimationKey T {
   2;
   1;
   0;3;0.082723,0.022955,-0.269526;;;
  }
 }

 Animation {
  
  { Bip01_L_Foot }

  AnimationKey S {
   1;
   1;
   0;3;1.000000,1.000000,1.000000;;;
  }

  AnimationKey R {
   0;
   1;
   0;4;0.996004,0.003947,0.067861,-0.057929;;;
  }

  AnimationKey T {
   2;
   1;
   0;3;0.206841,0.000000,-0.000000;;;
  }
 }
}