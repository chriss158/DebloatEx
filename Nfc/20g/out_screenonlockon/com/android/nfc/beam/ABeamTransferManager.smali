.class public Lcom/android/nfc/beam/ABeamTransferManager;
.super Ljava/lang/Object;
.source "ABeamTransferManager.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ABeamTransferManager.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/ABeamTransferManager;->DBG:Z

    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 19
    :goto_7
    return-void

    .line 18
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamTransferManager$1$6ddc27b4proceed(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 8
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lcom/lge/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p4, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferManager;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamTransferManager$2$547cd916proceed(Ljava/lang/String;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/io/File;
    .registers 4
    .param p0, "this"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/beam/ABeamTransferManager;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/beam/ABeamTransferManager;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/beam/ABeamTransferManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_LBeamTransferManager$generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/beam/ABeamTransferManager;

    invoke-direct {v0}, Lcom/android/nfc/beam/ABeamTransferManager;-><init>()V

    sput-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamTransferManager;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/beam/ABeamTransferManager;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamTransferManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_beam_ABeamTransferManager"

    sget-object v2, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamTransferManager;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamTransferManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_beam_ABeamTransferManager$1$6ddc27b4(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;ZLcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamTransferManager;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z
    .param p5, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,callback,pendingTransfer,incoming,ajc$aroundClosure"
        value = "(call(BeamTransferManager.new(Context, BeamTransferManager.Callback, BeamTransferRecord, boolean)) && args(context, callback, pendingTransfer, incoming))"
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$DBG()Z

    move-result v0

    const-string v1, "ABeamTransferManager.aj"

    const-string v2, "around() :call(* BeamTransferManager.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/android/nfc/beam/LBeamTransferManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/nfc/beam/LBeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    return-object v0
.end method

.method public ajc$around$com_android_nfc_beam_ABeamTransferManager$2$547cd916(Ljava/lang/String;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Ljava/io/File;
    .registers 6
    .param p1, "beamRoot"    # Ljava/lang/String;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "beamRoot,ajc$aroundClosure"
        value = "(execution(* BeamTransferManager.generateMultiplePath(String)) && args(beamRoot))"
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_ABeamTransferManager$DBG()Z

    move-result v0

    const-string v1, "ABeamTransferManager.aj"

    const-string v2, "around() :call(* BeamTransferManager.generateMultiplePath(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/android/nfc/beam/ABeamTransferManager;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamTransferManager$com_android_nfc_beam_LBeamTransferManager$generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
