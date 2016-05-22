.class public Lcom/android/nfc/AP2pLinkManager;
.super Ljava/lang/Object;
.source "AP2pLinkManager.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AP2pLinkManager.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/AP2pLinkManager;


# instance fields
.field mHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/AP2pLinkManager;->DBG:Z

    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 21
    :goto_7
    return-void

    .line 20
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/AP2pLinkManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AP2pLinkManager$2$d81d8afeproceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/handover/HandoverClient;
    .registers 2
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/HandoverClient;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/AP2pLinkManager;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pLinkManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$mHandoverDataParser(Lcom/android/nfc/AP2pLinkManager;)Lcom/android/nfc/handover/LHandoverDataParser;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/AP2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/AP2pLinkManager;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/AP2pLinkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$mHandoverDataParser(Lcom/android/nfc/AP2pLinkManager;Lcom/android/nfc/handover/LHandoverDataParser;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/AP2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/AP2pLinkManager;

    invoke-direct {v0}, Lcom/android/nfc/AP2pLinkManager;-><init>()V

    sput-object v0, Lcom/android/nfc/AP2pLinkManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pLinkManager;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/AP2pLinkManager;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pLinkManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pLinkManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_AP2pLinkManager"

    sget-object v2, Lcom/android/nfc/AP2pLinkManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/AP2pLinkManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pLinkManager;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pLinkManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pLinkManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_android_nfc_AP2pLinkManager$1$24810374(Lcom/android/nfc/P2pLinkManager;)V
    .registers 5
    .param p1, "manager"    # Lcom/android/nfc/P2pLinkManager;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "manager"
        value = "(execution(* P2pLinkManager.enableDisable(..)) && target(manager))"
    .end annotation

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/nfc/AP2pLinkManager;->DBG:Z

    const-string v1, "AP2pLinkManager.aj"

    const-string v2, "around() : after(* P2pLinkManager.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    check-cast v0, Lcom/android/nfc/handover/LHandoverDataParser;

    iput-object v0, p0, Lcom/android/nfc/AP2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/LHandoverDataParser;

    .line 28
    return-void
.end method

.method public ajc$around$com_android_nfc_AP2pLinkManager$2$d81d8afe(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/handover/HandoverClient;
    .registers 5
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(HandoverClient.new(..))"
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/android/nfc/AP2pLinkManager;->ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$DBG()Z

    move-result v0

    const-string v1, "AP2pLinkManager.aj"

    const-string v2, "around() :call(* HandoverClient.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/android/nfc/handover/LHandoverClient;

    invoke-static {p0}, Lcom/android/nfc/AP2pLinkManager;->ajc$inlineAccessFieldGet$com_android_nfc_AP2pLinkManager$com_android_nfc_AP2pLinkManager$mHandoverDataParser(Lcom/android/nfc/AP2pLinkManager;)Lcom/android/nfc/handover/LHandoverDataParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/LHandoverClient;-><init>(Lcom/android/nfc/handover/LHandoverDataParser;)V

    return-object v0
.end method
