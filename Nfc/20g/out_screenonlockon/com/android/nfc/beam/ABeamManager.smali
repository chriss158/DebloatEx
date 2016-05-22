.class public Lcom/android/nfc/beam/ABeamManager;
.super Ljava/lang/Object;
.source "ABeamManager.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ABeamManager.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/ABeamManager;->DBG:Z

    invoke-static {}, Lcom/android/nfc/beam/ABeamManager;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 15
    :goto_7
    return-void

    .line 14
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/beam/ABeamManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamManager$1$f4f60b33proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamManager;
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/beam/ABeamManager;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/beam/ABeamManager;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/beam/ABeamManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/beam/ABeamManager;

    invoke-direct {v0}, Lcom/android/nfc/beam/ABeamManager;-><init>()V

    sput-object v0, Lcom/android/nfc/beam/ABeamManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamManager;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/beam/ABeamManager;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_beam_ABeamManager"

    sget-object v2, Lcom/android/nfc/beam/ABeamManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/beam/ABeamManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamManager;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamManager;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_beam_ABeamManager$1$f4f60b33(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/beam/BeamManager;
    .registers 5
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* BeamManager.getInstance(..))"
    .end annotation

    .prologue
    .line 18
    invoke-static {}, Lcom/android/nfc/beam/ABeamManager;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamManager$com_android_nfc_beam_ABeamManager$DBG()Z

    move-result v0

    const-string v1, "ABeamManager.aj"

    const-string v2, "around() :execution(* BeamManager.getInstance(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    return-object v0
.end method
