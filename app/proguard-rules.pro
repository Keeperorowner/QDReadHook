# 不执行任何混淆
-dontobfuscate

# 保留所有的类、类成员和类初始化器
-keep class ** { *; }

# 保留所有的包
-keep package ** { *; }

# R8 支持的替代指令
--print-desugaring desugaring.txt
--print-configuration r8-config.txt
--print-mapping mapping.txt
