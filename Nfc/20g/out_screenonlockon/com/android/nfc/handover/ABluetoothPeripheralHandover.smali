.class public Lcom/android/nfc/handover/ABluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "ABluetoothPeripheralHandover.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ABluetoothPeripheralHandover.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/handover/ABluetoothPeripheralHandover;


# instance fields
.field mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->DBG:Z

    invoke-static {}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    .line 19
    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_handover_ABluetoothPeripheralHandover$1$b8726e96proceed(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .registers 9
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-virtual {p5, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;)Lcom/android/nfc/handover/LBluetoothPeripheralHandover;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    invoke-direct {v0}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$perSingletonInstance:Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/handover/ABluetoothPeripheralHandover;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$perSingletonInstance:Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_handover_ABluetoothPeripheralHandover"

    sget-object v2, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$perSingletonInstance:Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$perSingletonInstance:Lcom/android/nfc/handover/ABluetoothPeripheralHandover;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_android_nfc_handover_ABluetoothPeripheralHandover$2$325c2790(Lcom/lge/aspectj/lang/JoinPoint;)V
    .registers 5
    .param p1, "thisJoinPoint"    # Lcom/lge/aspectj/lang/JoinPoint;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = ""
        value = "(call(* BluetoothHeadset.connect(..)) && within(BluetoothPeripheralHandover))"
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    if-nez v0, :cond_5

    .line 38
    :goto_4
    return-void

    .line 36
    :cond_5
    sget-boolean v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->DBG:Z

    const-string v1, "ABluetoothPeripheralHandover.aj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->sendDelayMessage(I)V

    goto :goto_4
.end method

.method public ajc$after$com_android_nfc_handover_ABluetoothPeripheralHandover$3$e6aac549(Lcom/lge/aspectj/lang/JoinPoint;)V
    .registers 5
    .param p1, "thisJoinPoint"    # Lcom/lge/aspectj/lang/JoinPoint;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = ""
        value = "(call(* BluetoothA2dp.connect(..)) && within(BluetoothPeripheralHandover))"
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    if-nez v0, :cond_5

    .line 46
    :goto_4
    return-void

    .line 44
    :cond_5
    sget-boolean v0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->DBG:Z

    const-string v1, "ABluetoothPeripheralHandover.aj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->mHandover:Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;->sendDelayMessage(I)V

    goto :goto_4
.end method

.method public ajc$around$com_android_nfc_handover_ABluetoothPeripheralHandover$1$b8726e96(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;Lcom/lge/aspectj/lang/JoinPoint;)Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    .param p6, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .param p7, "thisJoinPoint"    # Lcom/lge/aspectj/lang/JoinPoint;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,device,name,transport,callback,ajc$aroundClosure"
        value = "(call(BluetoothPeripheralHandover.new(..)) && args(context, device, name, transport, callback))"
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$DBG()Z

    move-result v0

    const-string v1, "ABluetoothPeripheralHandover.aj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/LBluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    invoke-static {p0, v0}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldSet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;Lcom/android/nfc/handover/LBluetoothPeripheralHandover;)V

    .line 29
    invoke-static {p0}, Lcom/android/nfc/handover/ABluetoothPeripheralHandover;->ajc$inlineAccessFieldGet$com_android_nfc_handover_ABluetoothPeripheralHandover$com_android_nfc_handover_ABluetoothPeripheralHandover$mHandover(Lcom/android/nfc/handover/ABluetoothPeripheralHandover;)Lcom/android/nfc/handover/LBluetoothPeripheralHandover;

    move-result-object v0

    return-object v0
.end method
