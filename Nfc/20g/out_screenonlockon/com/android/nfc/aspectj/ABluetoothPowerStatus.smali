.class public Lcom/android/nfc/aspectj/ABluetoothPowerStatus;
.super Ljava/lang/Object;
.source "ABluetoothPowerStatus.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AHandoverPowerStatus.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ABluetoothPowerStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->DBG:Z

    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 17
    :goto_7
    return-void

    .line 16
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_aspectj_ABluetoothPowerStatus$1$31e1e862proceed(Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    invoke-direct {v0}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;-><init>()V

    sput-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/aspectj/ABluetoothPowerStatus;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_aspectj_ABluetoothPowerStatus"

    sget-object v2, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$perSingletonInstance:Lcom/android/nfc/aspectj/ABluetoothPowerStatus;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_aspectj_ABluetoothPowerStatus$1$31e1e862(Landroid/bluetooth/BluetoothAdapter;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 6
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "adapter,ajc$aroundClosure"
        value = "(call(* BluetoothAdapter.enableNoAutoConnect(..)) && ((within(com.android.nfc.beam..*) || within(com.android.nfc.handover..*)) && target(adapter)))"
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/android/nfc/aspectj/ABluetoothPowerStatus;->ajc$inlineAccessFieldGet$com_android_nfc_aspectj_ABluetoothPowerStatus$com_android_nfc_aspectj_ABluetoothPowerStatus$DBG()Z

    move-result v0

    const-string v1, "AHandoverPowerStatus.aj"

    const-string v2, "around() :call(* BluetoothAdapter.enableNoAutoConnect(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method
