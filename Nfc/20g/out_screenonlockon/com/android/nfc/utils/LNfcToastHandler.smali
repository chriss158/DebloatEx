.class public Lcom/android/nfc/utils/LNfcToastHandler;
.super Landroid/os/Handler;
.source "LNfcToastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MSG_SHOW_TOAST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LNfcMainThreadHandler"

.field private static sInstance:Lcom/android/nfc/utils/LNfcToastHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/utils/LNfcToastHandler;->DBG:Z

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/utils/LNfcToastHandler;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/android/nfc/utils/LNfcToastHandler;->sInstance:Lcom/android/nfc/utils/LNfcToastHandler;

    if-nez v0, :cond_f

    .line 68
    new-instance v0, Lcom/android/nfc/utils/LNfcToastHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc/utils/LNfcToastHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/nfc/utils/LNfcToastHandler;->sInstance:Lcom/android/nfc/utils/LNfcToastHandler;

    .line 71
    :cond_f
    sget-object v0, Lcom/android/nfc/utils/LNfcToastHandler;->sInstance:Lcom/android/nfc/utils/LNfcToastHandler;

    return-object v0
.end method

.method private static sendMessage(Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;)V
    .registers 5
    .param p0, "obj"    # Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;

    .prologue
    .line 54
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 55
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/android/nfc/utils/LNfcToastHandler;->getInstance()Lcom/android/nfc/utils/LNfcToastHandler;

    move-result-object v0

    .line 59
    .local v0, "handler":Lcom/android/nfc/utils/LNfcToastHandler;
    if-nez v0, :cond_18

    .line 60
    const-string v2, "LNfcMainThreadHandler"

    const-string v3, "handler is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_17
    return-void

    .line 63
    :cond_18
    invoke-virtual {v0, v1}, Lcom/android/nfc/utils/LNfcToastHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17
.end method

.method public static show(Landroid/content/Context;II)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastmessageId"    # I
    .param p2, "length"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;-><init>(Landroid/content/Context;II)V

    invoke-static {v0}, Lcom/android/nfc/utils/LNfcToastHandler;->sendMessage(Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;)V

    .line 51
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastmessage"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 46
    new-instance v0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/nfc/utils/LNfcToastHandler;->sendMessage(Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;)V

    .line 47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget v1, p1, Landroid/os/Message;->what:I

    .line 31
    .local v1, "what":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;

    if-eqz v2, :cond_19

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;

    move-object v0, v2

    .line 33
    .local v0, "message":Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;
    :goto_d
    if-nez v1, :cond_11

    if-nez v0, :cond_1b

    .line 34
    :cond_11
    const-string v2, "LNfcMainThreadHandler"

    const-string v3, "Invaild message!"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_18
    return-void

    .line 31
    .end local v0    # "message":Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;
    :cond_19
    const/4 v0, 0x0

    goto :goto_d

    .line 37
    .restart local v0    # "message":Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;
    :cond_1b
    sget-boolean v2, Lcom/android/nfc/utils/LNfcToastHandler;->DBG:Z

    const-string v3, "LNfcMainThreadHandler"

    const-string v4, "show message"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 39
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getLength()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 41
    :cond_3e
    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getMessageId()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->getLength()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method
