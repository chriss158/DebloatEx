.class public Lcom/android/nfc/beam/ABeamService;
.super Ljava/lang/Object;
.source "ABeamService.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ABeamService.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/ABeamService;->DBG:Z

    invoke-static {}, Lcom/android/nfc/beam/ABeamService;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 12
    :goto_7
    return-void

    .line 11
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/beam/ABeamService;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamService$1$b3de1c5aproceed(Lcom/android/nfc/beam/BeamSendService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/beam/BeamSendService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamService$2$10a9ab9proceed(Lcom/android/nfc/beam/BeamReceiveService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .param p0, "this"    # Lcom/android/nfc/beam/BeamReceiveService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamService$3$a231b99fproceed(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p0, "this"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic ajc$around$com_android_nfc_beam_ABeamService$4$26ba66e0proceed(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p0, "this"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/beam/ABeamService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/beam/ABeamService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/beam/ABeamService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$initService(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/android/nfc/beam/LBeamService;->initService(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/android/nfc/beam/LBeamService;->sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/beam/ABeamService;

    invoke-direct {v0}, Lcom/android/nfc/beam/ABeamService;-><init>()V

    sput-object v0, Lcom/android/nfc/beam/ABeamService;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamService;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/beam/ABeamService;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamService;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamService;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_beam_ABeamService"

    sget-object v2, Lcom/android/nfc/beam/ABeamService;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/beam/ABeamService;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamService;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/beam/ABeamService;->ajc$perSingletonInstance:Lcom/android/nfc/beam/ABeamService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_beam_ABeamService$1$b3de1c5a(Lcom/android/nfc/beam/BeamSendService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "service"    # Lcom/android/nfc/beam/BeamSendService;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "service,ajc$aroundClosure"
        value = "(execution(* BeamSendService.onCreate(..)) && this(service))"
    .end annotation

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;Landroid/content/Context;)V

    .line 17
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamSendService.onCreate(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$initService(Landroid/content/Context;)V

    .line 19
    invoke-static {p1, p2}, Lcom/android/nfc/beam/ABeamService;->ajc$around$com_android_nfc_beam_ABeamService$1$b3de1c5aproceed(Lcom/android/nfc/beam/BeamSendService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 20
    return-void
.end method

.method public ajc$around$com_android_nfc_beam_ABeamService$2$10a9ab9(Lcom/android/nfc/beam/BeamReceiveService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .param p1, "service"    # Lcom/android/nfc/beam/BeamReceiveService;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "service,ajc$aroundClosure"
        value = "(execution(* BeamReceiveService.onCreate(..)) && this(service))"
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldSet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;Landroid/content/Context;)V

    .line 24
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamReceiveService.onCreate(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$initService(Landroid/content/Context;)V

    .line 26
    invoke-static {p1, p2}, Lcom/android/nfc/beam/ABeamService;->ajc$around$com_android_nfc_beam_ABeamService$2$10a9ab9proceed(Lcom/android/nfc/beam/BeamReceiveService;Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    .line 27
    return-void
.end method

.method public ajc$around$com_android_nfc_beam_ABeamService$3$a231b99f(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "intent,flags,startId,ajc$aroundClosure"
        value = "(execution(* BeamSendService.onStartCommand(Intent, int, int)) && args(intent, flags, startId))"
    .end annotation

    .prologue
    .line 30
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamSendService.onStartCommand(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    invoke-static {p1, p2, p3, p4}, Lcom/android/nfc/beam/ABeamService;->ajc$around$com_android_nfc_beam_ABeamService$3$a231b99fproceed(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    return v0
.end method

.method public ajc$around$com_android_nfc_beam_ABeamService$4$26ba66e0(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .param p4, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "intent,flags,startId,ajc$aroundClosure"
        value = "(execution(* BeamReceiveService.onStartCommand(Intent, int, int)) && args(intent, flags, startId))"
    .end annotation

    .prologue
    .line 35
    const-string v0, "ABeamService.aj"

    const-string v1, "pointcut around() : execution(BeamReceiveService.onStartCommand(..))"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessFieldGet$com_android_nfc_beam_ABeamService$com_android_nfc_beam_ABeamService$mContext(Lcom/android/nfc/beam/ABeamService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/nfc/beam/ABeamService;->ajc$inlineAccessMethod$com_android_nfc_beam_ABeamService$com_android_nfc_beam_LBeamService$sendInitIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    invoke-static {p1, p2, p3, p4}, Lcom/android/nfc/beam/ABeamService;->ajc$around$com_android_nfc_beam_ABeamService$4$26ba66e0proceed(Landroid/content/Intent;IILcom/lge/aspectj/runtime/internal/AroundClosure;)I

    move-result v0

    return v0
.end method
