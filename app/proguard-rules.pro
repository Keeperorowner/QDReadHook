# 不执行任何混淆
-dontobfuscate

# 保留所有的类、类成员和类初始化器
-keep class ** { *; }

# 保留所有的包
-keep package ** { *; }

# 列出未混淆的类和成员
-printseeds seeds.txt

# 列出从 apk 中删除的代码
-printusage unused.txt

# 混淆前后的映射
-printmapping mapping.txt
