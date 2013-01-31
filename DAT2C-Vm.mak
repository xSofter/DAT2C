# SlickEdit generated file.  Do not edit this file except in designated areas.

# Make command to use for dependencies
MAKE=make
RM=rm
MKDIR=mkdir

# -----Begin user-editable area-----
boost_dir=/usr/local/boost_1_42_0
openssl_dir=/usr/local/openssl-1.0.0d
boost_include_dir=$(boost_dir)
openssl_include_dir=$(openssl_dir)/include
boost_lib_dir=$(boost_dir)/stage/lib
openssl_lib_dir=$(openssl_dir)
compiler=g++
linker=g++
preDef=_TPE3000_
openssl_plus=-ldl
posix_lib=-lpthread
selfDef_lib=./lib/libzkty_led.a
#selfDef_lib=-L./lib -lzkty_dio
# -----End user-editable area-----

# If no configuration is specified, "Debug" will be used
ifndef CFG
CFG=Debug
endif

#
# Configuration: Debug
#
ifeq "$(CFG)" "Debug"
OUTDIR=Debug
OUTFILE=../$(OUTDIR)/DAT2C
CFG_INC=-I$(boost_include_dir) -I$(openssl_include_dir) 
CFG_LIB=$(boost_lib_dir)/libboost_system.a \
	$(boost_lib_dir)/libboost_regex.a \
	$(boost_lib_dir)/libboost_date_time.a \
	$(boost_lib_dir)/libboost_thread.a \
	$(boost_lib_dir)/libboost_signals.a \
	$(boost_lib_dir)/libboost_filesystem.a \
	$(openssl_lib_dir)/libcrypto.a $(openssl_lib_dir)/libsm2.a \
	$(selfDef_lib) $(openssl_plus) $(posix_lib) 
CFG_OBJ=
COMMON_OBJ=$(OUTDIR)/Algorithm.o $(OUTDIR)/OutLetSwitch.o \
	$(OUTDIR)/SwitchNode.o $(OUTDIR)/CommFactory.o \
	$(OUTDIR)/CommInterface.o $(OUTDIR)/CommPara.o \
	$(OUTDIR)/SerialPort.o $(OUTDIR)/ServerInterface.o \
	$(OUTDIR)/TcpClient.o $(OUTDIR)/TcpServer.o $(OUTDIR)/TcpSession.o \
	$(OUTDIR)/UartPort.o $(OUTDIR)/UdpClient.o $(OUTDIR)/UdpServer.o \
	$(OUTDIR)/UdpSession.o $(OUTDIR)/BF533Terminal.o \
	$(OUTDIR)/CalcYxPoint.o $(OUTDIR)/CommPoint.o $(OUTDIR)/CosPoint.o \
	$(OUTDIR)/CosRecord.o $(OUTDIR)/DAOperate.o $(OUTDIR)/DAOperateSub.o \
	$(OUTDIR)/DataRecord.o $(OUTDIR)/FaultPoint.o \
	$(OUTDIR)/FaultRecord.o $(OUTDIR)/Line.o $(OUTDIR)/PriStation.o \
	$(OUTDIR)/SoePoint.o $(OUTDIR)/SoeRecord.o $(OUTDIR)/SubStation.o \
	$(OUTDIR)/Terminal.o $(OUTDIR)/TerminalFactroy.o \
	$(OUTDIR)/YcHisRecord.o $(OUTDIR)/YCPoint.o $(OUTDIR)/YcStatRecord.o \
	$(OUTDIR)/YcVarPoint.o $(OUTDIR)/YkCancelState.o \
	$(OUTDIR)/YkExeState.o $(OUTDIR)/YkPoint.o $(OUTDIR)/YkReadyState.o \
	$(OUTDIR)/YkRecord.o $(OUTDIR)/YkSelState.o $(OUTDIR)/YkState.o \
	$(OUTDIR)/YmPoint.o $(OUTDIR)/YxPoint.o $(OUTDIR)/EccPrivateKey.o \
	$(OUTDIR)/EccPublicKey.o $(OUTDIR)/KeyFactory.o \
	$(OUTDIR)/PrivateKey.o $(OUTDIR)/PublicKey.o \
	$(OUTDIR)/RsaPrivateKey.o $(OUTDIR)/RsaPublicKey.o \
	$(OUTDIR)/Sm2PrivateKey.o $(OUTDIR)/Sm2PublicKey.o \
	$(OUTDIR)/SpeEccPrivateKey.o $(OUTDIR)/SpeEccPublicKey.o \
	$(OUTDIR)/DistributedDA.o $(OUTDIR)/LinkNode.o \
	$(OUTDIR)/LoadSwtich.o $(OUTDIR)/OperateNode.o $(OUTDIR)/SelfNode.o \
	$(OUTDIR)/SWNode.o $(OUTDIR)/TieSwitch.o $(OUTDIR)/FileHandle.o \
	$(OUTDIR)/Log.o $(OUTDIR)/Markup.o $(OUTDIR)/TextLog.o \
	$(OUTDIR)/XmlLog.o $(OUTDIR)/XmlRecord.o $(OUTDIR)/BatteryActive.o \
	$(OUTDIR)/Bluetooth.o $(OUTDIR)/Bluetooth_BF518.o $(OUTDIR)/DIO.o \
	$(OUTDIR)/DIO_PCM82X.o $(OUTDIR)/DIO_Virtual.o \
	$(OUTDIR)/DioFactory.o $(OUTDIR)/LightDriver_TPE3000.o \
	$(OUTDIR)/WatchDog.o $(OUTDIR)/WatchDog_BF518.o \
	$(OUTDIR)/WatchDog_PCM82X.o $(OUTDIR)/WatchDog_TPE3000.o \
	$(OUTDIR)/WatchDogFactory.o $(OUTDIR)/BF533.o \
	$(OUTDIR)/BF533_CfgFile.o $(OUTDIR)/CmdQueue.o $(OUTDIR)/EqualComm.o \
	$(OUTDIR)/GB_T18657_1.o $(OUTDIR)/H101.o $(OUTDIR)/H101_B.o \
	$(OUTDIR)/H101_Transmit.o $(OUTDIR)/H103.o \
	$(OUTDIR)/H103_DigiproII.o $(OUTDIR)/H103_MMP_CK.o \
	$(OUTDIR)/H103_MMP_LI.o $(OUTDIR)/H103_NZ.o $(OUTDIR)/H103_NZ_UDP.o \
	$(OUTDIR)/H104.o $(OUTDIR)/H104_Transmit.o $(OUTDIR)/HTestProcotol.o \
	$(OUTDIR)/Modbus.o $(OUTDIR)/ModbusCMD.o $(OUTDIR)/Protocol.o \
	$(OUTDIR)/ProtocolFactory.o $(OUTDIR)/S101.o $(OUTDIR)/S101_518.o \
	$(OUTDIR)/S101_B.o $(OUTDIR)/S101_Transmit.o $(OUTDIR)/S104.o \
	$(OUTDIR)/S104_518.o $(OUTDIR)/S104_Transmit.o \
	$(OUTDIR)/TestCommInterface.o $(OUTDIR)/EfficientRouteTab.o \
	$(OUTDIR)/LoopBuf.o $(OUTDIR)/SpaceRouteTab.o $(OUTDIR)/ZdTimer.o \
	$(OUTDIR)/posix_main.o $(OUTDIR)/win_main.o 
OBJ=$(COMMON_OBJ) $(CFG_OBJ)
ALL_OBJ=$(OUTDIR)/Algorithm.o $(OUTDIR)/OutLetSwitch.o \
	$(OUTDIR)/SwitchNode.o $(OUTDIR)/CommFactory.o \
	$(OUTDIR)/CommInterface.o $(OUTDIR)/CommPara.o \
	$(OUTDIR)/SerialPort.o $(OUTDIR)/ServerInterface.o \
	$(OUTDIR)/TcpClient.o $(OUTDIR)/TcpServer.o $(OUTDIR)/TcpSession.o \
	$(OUTDIR)/UartPort.o $(OUTDIR)/UdpClient.o $(OUTDIR)/UdpServer.o \
	$(OUTDIR)/UdpSession.o $(OUTDIR)/BF533Terminal.o \
	$(OUTDIR)/CalcYxPoint.o $(OUTDIR)/CommPoint.o $(OUTDIR)/CosPoint.o \
	$(OUTDIR)/CosRecord.o $(OUTDIR)/DAOperate.o $(OUTDIR)/DAOperateSub.o \
	$(OUTDIR)/DataRecord.o $(OUTDIR)/FaultPoint.o \
	$(OUTDIR)/FaultRecord.o $(OUTDIR)/Line.o $(OUTDIR)/PriStation.o \
	$(OUTDIR)/SoePoint.o $(OUTDIR)/SoeRecord.o $(OUTDIR)/SubStation.o \
	$(OUTDIR)/Terminal.o $(OUTDIR)/TerminalFactroy.o \
	$(OUTDIR)/YcHisRecord.o $(OUTDIR)/YCPoint.o $(OUTDIR)/YcStatRecord.o \
	$(OUTDIR)/YcVarPoint.o $(OUTDIR)/YkCancelState.o \
	$(OUTDIR)/YkExeState.o $(OUTDIR)/YkPoint.o $(OUTDIR)/YkReadyState.o \
	$(OUTDIR)/YkRecord.o $(OUTDIR)/YkSelState.o $(OUTDIR)/YkState.o \
	$(OUTDIR)/YmPoint.o $(OUTDIR)/YxPoint.o $(OUTDIR)/EccPrivateKey.o \
	$(OUTDIR)/EccPublicKey.o $(OUTDIR)/KeyFactory.o \
	$(OUTDIR)/PrivateKey.o $(OUTDIR)/PublicKey.o \
	$(OUTDIR)/RsaPrivateKey.o $(OUTDIR)/RsaPublicKey.o \
	$(OUTDIR)/Sm2PrivateKey.o $(OUTDIR)/Sm2PublicKey.o \
	$(OUTDIR)/SpeEccPrivateKey.o $(OUTDIR)/SpeEccPublicKey.o \
	$(OUTDIR)/DistributedDA.o $(OUTDIR)/LinkNode.o \
	$(OUTDIR)/LoadSwtich.o $(OUTDIR)/OperateNode.o $(OUTDIR)/SelfNode.o \
	$(OUTDIR)/SWNode.o $(OUTDIR)/TieSwitch.o $(OUTDIR)/FileHandle.o \
	$(OUTDIR)/Log.o $(OUTDIR)/Markup.o $(OUTDIR)/TextLog.o \
	$(OUTDIR)/XmlLog.o $(OUTDIR)/XmlRecord.o $(OUTDIR)/BatteryActive.o \
	$(OUTDIR)/Bluetooth.o $(OUTDIR)/Bluetooth_BF518.o $(OUTDIR)/DIO.o \
	$(OUTDIR)/DIO_PCM82X.o $(OUTDIR)/DIO_Virtual.o \
	$(OUTDIR)/DioFactory.o $(OUTDIR)/LightDriver_TPE3000.o \
	$(OUTDIR)/WatchDog.o $(OUTDIR)/WatchDog_BF518.o \
	$(OUTDIR)/WatchDog_PCM82X.o $(OUTDIR)/WatchDog_TPE3000.o \
	$(OUTDIR)/WatchDogFactory.o $(OUTDIR)/BF533.o \
	$(OUTDIR)/BF533_CfgFile.o $(OUTDIR)/CmdQueue.o $(OUTDIR)/EqualComm.o \
	$(OUTDIR)/GB_T18657_1.o $(OUTDIR)/H101.o $(OUTDIR)/H101_B.o \
	$(OUTDIR)/H101_Transmit.o $(OUTDIR)/H103.o \
	$(OUTDIR)/H103_DigiproII.o $(OUTDIR)/H103_MMP_CK.o \
	$(OUTDIR)/H103_MMP_LI.o $(OUTDIR)/H103_NZ.o $(OUTDIR)/H103_NZ_UDP.o \
	$(OUTDIR)/H104.o $(OUTDIR)/H104_Transmit.o $(OUTDIR)/HTestProcotol.o \
	$(OUTDIR)/Modbus.o $(OUTDIR)/ModbusCMD.o $(OUTDIR)/Protocol.o \
	$(OUTDIR)/ProtocolFactory.o $(OUTDIR)/S101.o $(OUTDIR)/S101_518.o \
	$(OUTDIR)/S101_B.o $(OUTDIR)/S101_Transmit.o $(OUTDIR)/S104.o \
	$(OUTDIR)/S104_518.o $(OUTDIR)/S104_Transmit.o \
	$(OUTDIR)/TestCommInterface.o $(OUTDIR)/EfficientRouteTab.o \
	$(OUTDIR)/LoopBuf.o $(OUTDIR)/SpaceRouteTab.o $(OUTDIR)/ZdTimer.o \
	$(OUTDIR)/posix_main.o $(OUTDIR)/win_main.o \
	$(boost_lib_dir)/libboost_system.a $(boost_lib_dir)/libboost_regex.a \
	$(boost_lib_dir)/libboost_date_time.a \
	$(boost_lib_dir)/libboost_thread.a \
	$(boost_lib_dir)/libboost_signals.a \
	$(boost_lib_dir)/libboost_filesystem.a \
	$(openssl_lib_dir)/libcrypto.a $(openssl_lib_dir)/libsm2.a \
	$(selfDef_lib) $(openssl_plus) $(posix_lib) 

COMPILE=$(compiler) -c  "-D$(preDef)" -g -o "$(OUTDIR)/$(*F).o" $(CFG_INC) $<
LINK=$(linker)  -g -o "$(OUTFILE)" $(ALL_OBJ)

# Pattern rules
$(OUTDIR)/%.o : %.cpp
	$(COMPILE)

$(OUTDIR)/%.o : PublicSupport/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : LocalDrive/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : FileSystem/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DataBase/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DistributedFA/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : CentralizedFA/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DigitalSignature/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : Protocol/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : CommInterface/%.cpp
	$(COMPILE)

# Build rules
all: $(OUTFILE)

$(OUTFILE): $(OUTDIR)  $(OBJ)
	$(LINK)

$(OUTDIR):
	$(MKDIR) -p "$(OUTDIR)"

# Rebuild this project
rebuild: cleanall all

# Clean this project
clean:
	$(RM) -f $(OUTFILE)
	$(RM) -f $(OBJ)

# Clean this project and all dependencies
cleanall: clean
endif

#
# Configuration: Release
#
ifeq "$(CFG)" "Release"
OUTDIR=Release
OUTFILE=../$(OUTDIR)/DAT2C
CFG_INC=-I$(boost_include_dir) -I$(openssl_include_dir) 
CFG_LIB=$(boost_lib_dir)/libboost_system.a \
	$(boost_lib_dir)/libboost_regex.a \
	$(boost_lib_dir)/libboost_date_time.a \
	$(boost_lib_dir)/libboost_thread.a \
	$(boost_lib_dir)/libboost_signals.a \
	$(boost_lib_dir)/libboost_filesystem.a \
	$(openssl_lib_dir)/libcrypto.a $(openssl_lib_dir)/libsm2.a \
	$(selfDef_lib) $(openssl_plus) $(posix_lib) 
CFG_OBJ=
COMMON_OBJ=$(OUTDIR)/Algorithm.o $(OUTDIR)/OutLetSwitch.o \
	$(OUTDIR)/SwitchNode.o $(OUTDIR)/CommFactory.o \
	$(OUTDIR)/CommInterface.o $(OUTDIR)/CommPara.o \
	$(OUTDIR)/SerialPort.o $(OUTDIR)/ServerInterface.o \
	$(OUTDIR)/TcpClient.o $(OUTDIR)/TcpServer.o $(OUTDIR)/TcpSession.o \
	$(OUTDIR)/UartPort.o $(OUTDIR)/UdpClient.o $(OUTDIR)/UdpServer.o \
	$(OUTDIR)/UdpSession.o $(OUTDIR)/BF533Terminal.o \
	$(OUTDIR)/CalcYxPoint.o $(OUTDIR)/CommPoint.o $(OUTDIR)/CosPoint.o \
	$(OUTDIR)/CosRecord.o $(OUTDIR)/DAOperate.o $(OUTDIR)/DAOperateSub.o \
	$(OUTDIR)/DataRecord.o $(OUTDIR)/FaultPoint.o \
	$(OUTDIR)/FaultRecord.o $(OUTDIR)/Line.o $(OUTDIR)/PriStation.o \
	$(OUTDIR)/SoePoint.o $(OUTDIR)/SoeRecord.o $(OUTDIR)/SubStation.o \
	$(OUTDIR)/Terminal.o $(OUTDIR)/TerminalFactroy.o \
	$(OUTDIR)/YcHisRecord.o $(OUTDIR)/YCPoint.o $(OUTDIR)/YcStatRecord.o \
	$(OUTDIR)/YcVarPoint.o $(OUTDIR)/YkCancelState.o \
	$(OUTDIR)/YkExeState.o $(OUTDIR)/YkPoint.o $(OUTDIR)/YkReadyState.o \
	$(OUTDIR)/YkRecord.o $(OUTDIR)/YkSelState.o $(OUTDIR)/YkState.o \
	$(OUTDIR)/YmPoint.o $(OUTDIR)/YxPoint.o $(OUTDIR)/EccPrivateKey.o \
	$(OUTDIR)/EccPublicKey.o $(OUTDIR)/KeyFactory.o \
	$(OUTDIR)/PrivateKey.o $(OUTDIR)/PublicKey.o \
	$(OUTDIR)/RsaPrivateKey.o $(OUTDIR)/RsaPublicKey.o \
	$(OUTDIR)/Sm2PrivateKey.o $(OUTDIR)/Sm2PublicKey.o \
	$(OUTDIR)/SpeEccPrivateKey.o $(OUTDIR)/SpeEccPublicKey.o \
	$(OUTDIR)/DistributedDA.o $(OUTDIR)/LinkNode.o \
	$(OUTDIR)/LoadSwtich.o $(OUTDIR)/OperateNode.o $(OUTDIR)/SelfNode.o \
	$(OUTDIR)/SWNode.o $(OUTDIR)/TieSwitch.o $(OUTDIR)/FileHandle.o \
	$(OUTDIR)/Log.o $(OUTDIR)/Markup.o $(OUTDIR)/TextLog.o \
	$(OUTDIR)/XmlLog.o $(OUTDIR)/XmlRecord.o $(OUTDIR)/BatteryActive.o \
	$(OUTDIR)/Bluetooth.o $(OUTDIR)/Bluetooth_BF518.o $(OUTDIR)/DIO.o \
	$(OUTDIR)/DIO_PCM82X.o $(OUTDIR)/DIO_Virtual.o \
	$(OUTDIR)/DioFactory.o $(OUTDIR)/LightDriver_TPE3000.o \
	$(OUTDIR)/WatchDog.o $(OUTDIR)/WatchDog_BF518.o \
	$(OUTDIR)/WatchDog_PCM82X.o $(OUTDIR)/WatchDog_TPE3000.o \
	$(OUTDIR)/WatchDogFactory.o $(OUTDIR)/BF533.o \
	$(OUTDIR)/BF533_CfgFile.o $(OUTDIR)/CmdQueue.o $(OUTDIR)/EqualComm.o \
	$(OUTDIR)/GB_T18657_1.o $(OUTDIR)/H101.o $(OUTDIR)/H101_B.o \
	$(OUTDIR)/H101_Transmit.o $(OUTDIR)/H103.o \
	$(OUTDIR)/H103_DigiproII.o $(OUTDIR)/H103_MMP_CK.o \
	$(OUTDIR)/H103_MMP_LI.o $(OUTDIR)/H103_NZ.o $(OUTDIR)/H103_NZ_UDP.o \
	$(OUTDIR)/H104.o $(OUTDIR)/H104_Transmit.o $(OUTDIR)/HTestProcotol.o \
	$(OUTDIR)/Modbus.o $(OUTDIR)/ModbusCMD.o $(OUTDIR)/Protocol.o \
	$(OUTDIR)/ProtocolFactory.o $(OUTDIR)/S101.o $(OUTDIR)/S101_518.o \
	$(OUTDIR)/S101_B.o $(OUTDIR)/S101_Transmit.o $(OUTDIR)/S104.o \
	$(OUTDIR)/S104_518.o $(OUTDIR)/S104_Transmit.o \
	$(OUTDIR)/TestCommInterface.o $(OUTDIR)/EfficientRouteTab.o \
	$(OUTDIR)/LoopBuf.o $(OUTDIR)/SpaceRouteTab.o $(OUTDIR)/ZdTimer.o \
	$(OUTDIR)/posix_main.o $(OUTDIR)/win_main.o 
OBJ=$(COMMON_OBJ) $(CFG_OBJ)
ALL_OBJ=$(OUTDIR)/Algorithm.o $(OUTDIR)/OutLetSwitch.o \
	$(OUTDIR)/SwitchNode.o $(OUTDIR)/CommFactory.o \
	$(OUTDIR)/CommInterface.o $(OUTDIR)/CommPara.o \
	$(OUTDIR)/SerialPort.o $(OUTDIR)/ServerInterface.o \
	$(OUTDIR)/TcpClient.o $(OUTDIR)/TcpServer.o $(OUTDIR)/TcpSession.o \
	$(OUTDIR)/UartPort.o $(OUTDIR)/UdpClient.o $(OUTDIR)/UdpServer.o \
	$(OUTDIR)/UdpSession.o $(OUTDIR)/BF533Terminal.o \
	$(OUTDIR)/CalcYxPoint.o $(OUTDIR)/CommPoint.o $(OUTDIR)/CosPoint.o \
	$(OUTDIR)/CosRecord.o $(OUTDIR)/DAOperate.o $(OUTDIR)/DAOperateSub.o \
	$(OUTDIR)/DataRecord.o $(OUTDIR)/FaultPoint.o \
	$(OUTDIR)/FaultRecord.o $(OUTDIR)/Line.o $(OUTDIR)/PriStation.o \
	$(OUTDIR)/SoePoint.o $(OUTDIR)/SoeRecord.o $(OUTDIR)/SubStation.o \
	$(OUTDIR)/Terminal.o $(OUTDIR)/TerminalFactroy.o \
	$(OUTDIR)/YcHisRecord.o $(OUTDIR)/YCPoint.o $(OUTDIR)/YcStatRecord.o \
	$(OUTDIR)/YcVarPoint.o $(OUTDIR)/YkCancelState.o \
	$(OUTDIR)/YkExeState.o $(OUTDIR)/YkPoint.o $(OUTDIR)/YkReadyState.o \
	$(OUTDIR)/YkRecord.o $(OUTDIR)/YkSelState.o $(OUTDIR)/YkState.o \
	$(OUTDIR)/YmPoint.o $(OUTDIR)/YxPoint.o $(OUTDIR)/EccPrivateKey.o \
	$(OUTDIR)/EccPublicKey.o $(OUTDIR)/KeyFactory.o \
	$(OUTDIR)/PrivateKey.o $(OUTDIR)/PublicKey.o \
	$(OUTDIR)/RsaPrivateKey.o $(OUTDIR)/RsaPublicKey.o \
	$(OUTDIR)/Sm2PrivateKey.o $(OUTDIR)/Sm2PublicKey.o \
	$(OUTDIR)/SpeEccPrivateKey.o $(OUTDIR)/SpeEccPublicKey.o \
	$(OUTDIR)/DistributedDA.o $(OUTDIR)/LinkNode.o \
	$(OUTDIR)/LoadSwtich.o $(OUTDIR)/OperateNode.o $(OUTDIR)/SelfNode.o \
	$(OUTDIR)/SWNode.o $(OUTDIR)/TieSwitch.o $(OUTDIR)/FileHandle.o \
	$(OUTDIR)/Log.o $(OUTDIR)/Markup.o $(OUTDIR)/TextLog.o \
	$(OUTDIR)/XmlLog.o $(OUTDIR)/XmlRecord.o $(OUTDIR)/BatteryActive.o \
	$(OUTDIR)/Bluetooth.o $(OUTDIR)/Bluetooth_BF518.o $(OUTDIR)/DIO.o \
	$(OUTDIR)/DIO_PCM82X.o $(OUTDIR)/DIO_Virtual.o \
	$(OUTDIR)/DioFactory.o $(OUTDIR)/LightDriver_TPE3000.o \
	$(OUTDIR)/WatchDog.o $(OUTDIR)/WatchDog_BF518.o \
	$(OUTDIR)/WatchDog_PCM82X.o $(OUTDIR)/WatchDog_TPE3000.o \
	$(OUTDIR)/WatchDogFactory.o $(OUTDIR)/BF533.o \
	$(OUTDIR)/BF533_CfgFile.o $(OUTDIR)/CmdQueue.o $(OUTDIR)/EqualComm.o \
	$(OUTDIR)/GB_T18657_1.o $(OUTDIR)/H101.o $(OUTDIR)/H101_B.o \
	$(OUTDIR)/H101_Transmit.o $(OUTDIR)/H103.o \
	$(OUTDIR)/H103_DigiproII.o $(OUTDIR)/H103_MMP_CK.o \
	$(OUTDIR)/H103_MMP_LI.o $(OUTDIR)/H103_NZ.o $(OUTDIR)/H103_NZ_UDP.o \
	$(OUTDIR)/H104.o $(OUTDIR)/H104_Transmit.o $(OUTDIR)/HTestProcotol.o \
	$(OUTDIR)/Modbus.o $(OUTDIR)/ModbusCMD.o $(OUTDIR)/Protocol.o \
	$(OUTDIR)/ProtocolFactory.o $(OUTDIR)/S101.o $(OUTDIR)/S101_518.o \
	$(OUTDIR)/S101_B.o $(OUTDIR)/S101_Transmit.o $(OUTDIR)/S104.o \
	$(OUTDIR)/S104_518.o $(OUTDIR)/S104_Transmit.o \
	$(OUTDIR)/TestCommInterface.o $(OUTDIR)/EfficientRouteTab.o \
	$(OUTDIR)/LoopBuf.o $(OUTDIR)/SpaceRouteTab.o $(OUTDIR)/ZdTimer.o \
	$(OUTDIR)/posix_main.o $(OUTDIR)/win_main.o \
	$(boost_lib_dir)/libboost_system.a $(boost_lib_dir)/libboost_regex.a \
	$(boost_lib_dir)/libboost_date_time.a \
	$(boost_lib_dir)/libboost_thread.a \
	$(boost_lib_dir)/libboost_signals.a \
	$(boost_lib_dir)/libboost_filesystem.a \
	$(openssl_lib_dir)/libcrypto.a $(openssl_lib_dir)/libsm2.a \
	$(selfDef_lib) $(openssl_plus) $(posix_lib) 

COMPILE=$(compiler) -c  "-D$(preDef)" -o "$(OUTDIR)/$(*F).o" $(CFG_INC) $<
LINK=$(linker)  -o "$(OUTFILE)" $(ALL_OBJ)

# Pattern rules
$(OUTDIR)/%.o : %.cpp
	$(COMPILE)

$(OUTDIR)/%.o : PublicSupport/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : LocalDrive/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : FileSystem/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DataBase/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DistributedFA/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : CentralizedFA/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : DigitalSignature/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : Protocol/%.cpp
	$(COMPILE)

$(OUTDIR)/%.o : CommInterface/%.cpp
	$(COMPILE)

# Build rules
all: $(OUTFILE)

$(OUTFILE): $(OUTDIR)  $(OBJ)
	$(LINK)

$(OUTDIR):
	$(MKDIR) -p "$(OUTDIR)"

# Rebuild this project
rebuild: cleanall all

# Clean this project
clean:
	$(RM) -f $(OUTFILE)
	$(RM) -f $(OBJ)

# Clean this project and all dependencies
cleanall: clean
endif
