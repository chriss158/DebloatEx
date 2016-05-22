.class public Lcom/android/nfc/beam/LSendUi;
.super Lcom/android/nfc/beam/SendUi;
.source "LSendUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final MSG_RECYCLE_BITMAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSendUi"


# instance fields
.field private mHandler:Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;

.field private mSendUiTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/LSendUi;->DBG:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/SendUi$Callback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/beam/SendUi;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V

    .line 99
    new-instance v0, Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;-><init>(Lcom/android/nfc/beam/LSendUi;)V

    iput-object v0, p0, Lcom/android/nfc/beam/LSendUi;->mHandler:Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;

    .line 30
    return-void
.end method


# virtual methods
.method dismiss()V
    .registers 5

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/nfc/beam/LSendUi;->mHandler:Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;

    invoke-virtual {v1}, Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 44
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 45
    iget-object v1, p0, Lcom/android/nfc/beam/LSendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/android/nfc/beam/LSendUi;->mHandler:Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 47
    invoke-super {p0}, Lcom/android/nfc/beam/SendUi;->dismiss()V

    .line 48
    return-void
.end method

.method protected getBeamTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/beam/LSendUi;->mSendUiTitle:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 58
    invoke-super {p0}, Lcom/android/nfc/beam/SendUi;->getBeamTitle()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/nfc/beam/LSendUi;->mSendUiTitle:Ljava/lang/String;

    goto :goto_8
.end method

.method public isAvailableBeam()Z
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/android/nfc/beam/LSendUi;->mState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected makeDefaultCaptureScreen()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/nfc/beam/LSendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBeamTitle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/nfc/beam/LSendUi;->mSendUiTitle:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected setLayoutSize(Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "param"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 66
    iget-object v4, p0, Lcom/android/nfc/beam/LSendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 67
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/android/nfc/beam/LSendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 68
    .local v3, "statusBarHeight":I
    iget-object v4, p0, Lcom/android/nfc/beam/LSendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    .local v0, "navigationBarHeight":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 71
    .local v2, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/nfc/beam/LSendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 72
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    iget v5, v2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x2

    if-ne v4, v1, :cond_87

    move v4, v0

    :goto_46
    add-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 75
    iget v4, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    sget-boolean v4, Lcom/android/nfc/beam/LSendUi;->DBG:Z

    const-string v5, "LSendUi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", statusBarHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", navigationBarHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 74
    :cond_87
    const/4 v4, 0x0

    goto :goto_46
.end method
