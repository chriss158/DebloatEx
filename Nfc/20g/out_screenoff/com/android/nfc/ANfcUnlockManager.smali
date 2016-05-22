.class public Lcom/android/nfc/ANfcUnlockManager;
.super Ljava/lang/Object;
.source "ANfcUnlockManager.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ANfcUnlockManager.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/ANfcUnlockManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/ANfcUnlockManager;->DBG:Z

    invoke-static {}, Lcom/android/nfc/ANfcUnlockManager;->ajc$postClinit()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    sput-object v0, Lcom/android/nfc/ANfcUnlockManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_7
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_ANfcUnlockManager$1$f059507aproceed(Landroid/nfc/Tag;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 4
    .param p0, "this"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
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

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$DBG()Z
    .registers 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/ANfcUnlockManager;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$TAG()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcUnlockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$DBG(Z)V
    .registers 1

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/ANfcUnlockManager;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$TAG(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/ANfcUnlockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/ANfcUnlockManager;

    invoke-direct {v0}, Lcom/android/nfc/ANfcUnlockManager;-><init>()V

    sput-object v0, Lcom/android/nfc/ANfcUnlockManager;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcUnlockManager;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/ANfcUnlockManager;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcUnlockManager;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcUnlockManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_ANfcUnlockManager"

    sget-object v2, Lcom/android/nfc/ANfcUnlockManager;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/android/nfc/ANfcUnlockManager;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcUnlockManager;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/ANfcUnlockManager;->ajc$perSingletonInstance:Lcom/android/nfc/ANfcUnlockManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_android_nfc_ANfcUnlockManager$1$f059507a(Landroid/nfc/Tag;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z
    .registers 7
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "tag,ajc$aroundClosure"
        value = "(execution(* NfcUnlockManager.tryUnlock(..)) && args(tag))"
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lcom/android/nfc/ANfcUnlockManager;->ajc$inlineAccessFieldGet$com_android_nfc_ANfcUnlockManager$com_android_nfc_ANfcUnlockManager$DBG()Z

    move-result v1

    const-string v2, "ANfcUnlockManager.aj"

    const-string v3, "around() : execution (* NfcUnlockManager.tryUnlock(..)"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p1, p2}, Lcom/android/nfc/ANfcUnlockManager;->ajc$around$com_android_nfc_ANfcUnlockManager$1$f059507aproceed(Landroid/nfc/Tag;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    .line 23
    .local v0, "result":Z
    if-nez v0, :cond_18

    .line 24
    const-string v1, "ANfcUnlockManager.aj"

    const-string v2, "Try Unlock - false"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_18
    return v0
.end method
