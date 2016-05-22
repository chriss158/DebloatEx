.class public Lcom/android/nfc/AP2pEventManager;
.super Ljava/lang/Object;
.source "AP2pEventManager.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AP2pEventManager.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/AP2pEventManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/AP2pEventManager;->DBG:Z

    invoke-static {}, Lcom/android/nfc/AP2pEventManager;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 17
    :goto_7
    return-void

    .line 16
    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/AP2pEventManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_AP2pEventManager$1$7bf3f2e4proceed(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/P2pEventManager;
    .registers 5
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/P2pEventManager;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AP2pEventManager$com_android_nfc_AP2pEventManager$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/AP2pEventManager;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_AP2pEventManager$com_android_nfc_AP2pEventManager$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AP2pEventManager$com_android_nfc_AP2pEventManager$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/AP2pEventManager;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_AP2pEventManager$com_android_nfc_AP2pEventManager$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/AP2pEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/AP2pEventManager;

    invoke-direct {v0}, Lcom/android/nfc/AP2pEventManager;-><init>()V

    sput-object v0, Lcom/android/nfc/AP2pEventManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pEventManager;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/AP2pEventManager;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pEventManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pEventManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_AP2pEventManager"

    sget-object v2, Lcom/android/nfc/AP2pEventManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/AP2pEventManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pEventManager;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/AP2pEventManager;->ajc$perSingletonInstance:Lcom/android/nfc/AP2pEventManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_AP2pEventManager$1$7bf3f2e4(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/P2pEventManager;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/P2pEventListener$Callback;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,callback,ajc$aroundClosure"
        value = "(call(P2pEventManager.new(Context, P2pEventListener.Callback)) && args(context, callback))"
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/android/nfc/AP2pEventManager;->ajc$inlineAccessFieldGet$com_android_nfc_AP2pEventManager$com_android_nfc_AP2pEventManager$DBG()Z

    move-result v0

    const-string v1, "AP2pEventManager.aj"

    const-string v2, "around() :call(* P2pEventManager.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/android/nfc/LP2pEventManager;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/LP2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    return-object v0
.end method
