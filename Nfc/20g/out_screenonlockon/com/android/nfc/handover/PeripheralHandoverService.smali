.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final ajc$tjp_0:Lcom/lge/aspectj/lang/JoinPoint$StaticPart;

.field static mSoundPool:Landroid/media/SoundPool;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mStartId:I

.field mSuccessSound:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/nfc/handover/PeripheralHandoverService;->ajc$preClinit()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 93
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 95
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 97
    iput v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "arg0"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 7

    .prologue
    .line 1
    new-instance v0, Lcom/lge/aspectj/runtime/reflect/Factory;

    const-string v1, "PeripheralHandoverService.java"

    const-class v2, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v6, "constructor-call"

    const-string v1, "1"

    const-string v2, "com.android.nfc.handover.BluetoothPeripheralHandover"

    const-string v3, "android.content.Context:android.bluetooth.BluetoothDevice:java.lang.String:int:com.android.nfc.handover.BluetoothPeripheralHandover$Callback"

    const-string v4, "context:device:name:transport:callback"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/lge/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-virtual {v0, v6, v1, v2}, Lcom/lge/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lcom/lge/aspectj/lang/Signature;I)Lcom/lge/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->ajc$tjp_0:Lcom/lge/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final enableNoAutoConnect_aroundBody8(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/bluetooth/BluetoothAdapter;)Z
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0
.end method

.method private static final enableNoAutoConnect_aroundBody9$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 8
    .param p0, "ajc$this"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "target"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ABluetoothPowerStatus;
    .param p3, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 20
    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$DBG()Z

    move-result v0

    const-string v1, "AHandoverPowerStatus.aj"

    const-string v2, "around() :call(* BluetoothAdapter.enableNoAutoConnect(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 190
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 191
    const/high16 v2, -0x80000000

    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    .line 194
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_26

    .line 195
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_26

    .line 196
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_26

    .line 197
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 204
    :cond_26
    :goto_26
    return-void

    .line 200
    :cond_27
    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    .line 201
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_26
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/handover/PeripheralHandoverService;III)Landroid/media/SoundPool;
    .registers 5

    .prologue
    new-instance v0, Landroid/media/SoundPool;

    .line 131
    invoke-direct {v0, p1, p2, p3}, Landroid/media/SoundPool;-><init>(III)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/handover/PeripheralHandoverService;IIILcom/android/nfc/aspectj/ANfcSoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;
    .registers 12
    .param p0, "ajc$this"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I
    .param p4, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ANfcSoundPool;
    .param p5, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 30
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    const-string v4, "around() : call(SoundPool.new(..))"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/nfc/utils/LNfcSoundPool;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/nfc/utils/LNfcSoundPool;-><init>(I)V

    .line 33
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v2

    const-string v3, "ANfcSoundPool.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create NfcSoundPool : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v1

    .line 36
    .local v1, "pool":Landroid/media/SoundPool;
    invoke-static {p4}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v1
.end method

.method private static final init$_aroundBody6(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/lang/JoinPoint;)Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .registers 13

    .prologue
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    return-object v0
.end method

.method private static final init$_aroundBody7$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/lang/JoinPoint;Lcom/android/nfc/handover/ABluetoothPeripheralHandover;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;Lcom/lge/aspectj/lang/JoinPoint;)Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .registers 35

    .prologue
    .line 27
    move-object/from16 v6, p0

    .local v6, "ajc$this":Lcom/android/nfc/handover/PeripheralHandoverService;
    move-object/from16 v7, p1

    .local v7, "context":Landroid/content/Context;
    move-object/from16 v8, p2

    .local v8, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v9, p3

    .local v9, "name":Ljava/lang/String;
    move/from16 v10, p4

    .local v10, "transport":I
    move-object/from16 v11, p5

    .local v11, "callback":Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    move-object/from16 v12, p6

    .local v12, "thisJoinPoint":Lcom/lge/aspectj/lang/JoinPoint;
    move-object/from16 v13, p7

    .local v13, "ajc$aspectInstance":Lcom/android/nfc/handover/ABluetoothPeripheralHandover;
    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v19, p13

    .local v19, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    move-object/from16 v12, p14

    invoke-static {}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$DBG()Z

    move-result v0

    const-string v1, "ABluetoothPeripheralHandover.aj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    invoke-static {v13, v0}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldSet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V

    .line 29
    invoke-static {v13}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;)Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    move-result-object v0

    return-object v0
.end method

.method private static final load_aroundBody2(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;Landroid/content/Context;II)I
    .registers 6

    .prologue
    .line 133
    invoke-virtual {p1, p2, p3, p4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static final load_aroundBody3$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 27

    .prologue
    .line 41
    move-object/from16 v5, p0

    .local v5, "ajc$this":Lcom/android/nfc/handover/PeripheralHandoverService;
    move-object/from16 v6, p1

    .local v6, "target":Landroid/media/SoundPool;
    move-object/from16 v7, p2

    .local v7, "context":Landroid/content/Context;
    move/from16 v8, p3

    .local v8, "resId":I
    move/from16 v9, p4

    .local v9, "priority":I
    move-object/from16 v10, p5

    .local v10, "ajc$aspectInstance":Lcom/android/nfc/aspectj/ANfcSoundPool;
    move-object/from16 v11, p6

    .local v11, "soundPool":Landroid/media/SoundPool;
    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v15, p10

    .local v15, "ajc$aroundClosure":Lcom/lge/aspectj/runtime/internal/AroundClosure;
    invoke-static {v10}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 42
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.load()) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v0, :cond_3c

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_3b
    return v1

    :cond_3c
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/nfc/utils/LNfcSoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    goto :goto_3b
.end method

.method private static final release_aroundBody4(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;)V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method private static final release_aroundBody5$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;Lcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 10
    .param p0, "ajc$this"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "target"    # Landroid/media/SoundPool;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/aspectj/ANfcSoundPool;
    .param p3, "soundPool"    # Landroid/media/SoundPool;
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 50
    invoke-static {p2}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/utils/LNfcSoundPool;

    .line 51
    .local v0, "nfcSoundPool":Lcom/android/nfc/utils/LNfcSoundPool;
    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$DBG()Z

    move-result v1

    const-string v2, "ANfcSoundPool.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "around() : call(SoundPool.release(..)) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    if-eqz v0, :cond_2e

    .line 53
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcSoundPool;->release()V

    .line 54
    invoke-static {p2}, Lcom/android/nfc/aspectj/ANfcSoundPool;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ANfcSoundPool$com_android_nfc_aspectj_ANfcSoundPool$mSoundPoolMap(Lcom/android/nfc/aspectj/ANfcSoundPool;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2e
    return-void
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_5

    .line 252
    :cond_4
    :goto_4
    return-void

    .line 248
    :cond_5
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    goto :goto_4
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .registers 19
    .param p1, "msgData"    # Landroid/os/Bundle;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v2, :cond_f

    .line 152
    const-string v2, "PeripheralHandoverService"

    const-string v3, "Ignoring pairing request, existing handover in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v2, 0x1

    .line 186
    :goto_e
    return v2

    .line 156
    :cond_f
    if-nez p1, :cond_13

    .line 157
    const/4 v2, 0x0

    goto :goto_e

    .line 160
    :cond_13
    const-string v2, "device"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 161
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "headsetname"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "name":Ljava/lang/String;
    const-string v2, "transporttype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, "transport":I
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->ajc$tjp_0:Lcom/lge/aspectj/lang/JoinPoint$StaticPart;

    const/4 v3, 0x0

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    invoke-static {v6}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p0, v7, v8

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3, v7}, Lcom/lge/aspectj/runtime/reflect/Factory;->makeJP(Lcom/lge/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lge/aspectj/lang/JoinPoint;

    move-result-object v8

    invoke-static {}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->aspectOf()Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    move-result-object v9

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v7, p0

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    invoke-static/range {v2 .. v16}, Lcom/android/nfc/handover/PeripheralHandoverService;->init$_aroundBody7$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/lang/JoinPoint;Lcom/android/nfc/handover/ABluetoothPeripheralHandover;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;Lcom/lge/aspectj/lang/JoinPoint;)Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move-result-object v2

    .line 165
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 168
    const/4 v2, 0x2

    if-ne v6, v2, :cond_7d

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v8, 0x12c

    .line 169
    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    :cond_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 186
    :cond_a0
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 179
    :cond_a3
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 180
    const-string v2, "PeripheralHandoverService"

    const-string v3, "Error enabling Bluetooth."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 182
    const/4 v2, 0x0

    goto/16 :goto_e
.end method

.method enableBluetooth()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 238
    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 240
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->aspectOf()Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableNoAutoConnect_aroundBody9$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/bluetooth/BluetoothAdapter;Lcom/android/nfc/aspectj/ABluetoothPowerStatus;Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 242
    :cond_16
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 210
    .local v0, "transport":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 211
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 218
    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    if-nez p1, :cond_21

    .line 219
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 220
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    :cond_1c
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 227
    :cond_21
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 229
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_27
    iget v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 231
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 229
    monitor-exit v2

    .line 233
    return-void

    .line 229
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public onCreate()V
    .registers 13

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 131
    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/nfc/handover/PeripheralHandoverService;->init$_aroundBody1$advice(Lcom/android/nfc/handover/PeripheralHandoverService;IIILcom/android/nfc/aspectj/ANfcSoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/media/SoundPool;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 133
    sget-object v1, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f050000

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v5

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p0

    move-object v6, v1

    move-object v7, p0

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v10}, Lcom/android/nfc/handover/PeripheralHandoverService;->load_aroundBody3$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;Landroid/content/Context;IILcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Landroid/content/Context;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSuccessSound:I

    .line 134
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 136
    new-instance v11, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v11, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v11}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    sget-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_11

    .line 145
    sget-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/nfc/aspectj/ANfcSoundPool;->aspectOf()Lcom/android/nfc/aspectj/ANfcSoundPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->release_aroundBody5$advice(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/media/SoundPool;Lcom/android/nfc/aspectj/ANfcSoundPool;Landroid/media/SoundPool;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 103
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_5
    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    if-eqz v3, :cond_d

    .line 105
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 107
    monitor-exit v2

    .line 122
    :cond_c
    :goto_c
    return v0

    .line 109
    :cond_d
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 103
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1e

    .line 112
    if-nez p1, :cond_21

    .line 113
    const-string v0, "PeripheralHandoverService"

    const-string v2, "Intent is null, can\'t do peripheral handover."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 115
    goto :goto_c

    .line 103
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 118
    :cond_21
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 121
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    move v0, v1

    .line 122
    goto :goto_c
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method
