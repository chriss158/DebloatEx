.class public Lcom/android/nfc/cardemulation/LCardEmulationTest;
.super Ljava/lang/Object;
.source "LCardEmulationTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;,
        Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LCardEmulationTest"

.field private static sInstance:Lcom/android/nfc/cardemulation/LCardEmulationTest;


# instance fields
.field private mCallback:Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

.field private mIsDebug:Z

.field private mValueCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->DBG:Z

    .line 20
    return-void
.end method

.method private constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z

    .line 69
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$1;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mValueCallbackMap:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mCallback:Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/android/nfc/cardemulation/LCardEmulationTest;)Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mCallback:Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/nfc/cardemulation/LCardEmulationTest;)Z
    .registers 2

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z

    return v0
.end method

.method static synthetic access$2(Lcom/android/nfc/cardemulation/LCardEmulationTest;Z)V
    .registers 2

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z

    return-void
.end method

.method public static getInstance(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)Lcom/android/nfc/cardemulation/LCardEmulationTest;
    .registers 2
    .param p0, "callback"    # Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;

    .prologue
    .line 123
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->sInstance:Lcom/android/nfc/cardemulation/LCardEmulationTest;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Lcom/android/nfc/cardemulation/LCardEmulationTest;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/LCardEmulationTest;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationTest$Callback;)V

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->sInstance:Lcom/android/nfc/cardemulation/LCardEmulationTest;

    .line 126
    :cond_b
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->sInstance:Lcom/android/nfc/cardemulation/LCardEmulationTest;

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 4
    .param p1, "option"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mValueCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 49
    const-string v0, ""

    .line 52
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mValueCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;

    invoke-interface {v0}, Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public isDebugMode()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z

    return v0
.end method

.method public sendIntent(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mIsDebug:Z

    if-nez v1, :cond_5

    .line 41
    :goto_4
    return-void

    .line 39
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.nfc.CHANGE_AID_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4
.end method

.method public set(ILjava/lang/String;)Z
    .registers 5
    .param p1, "option"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mValueCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationTest;->mValueCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;

    invoke-interface {v0, p2}, Lcom/android/nfc/cardemulation/LCardEmulationTest$ValueCallback;->set(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method
