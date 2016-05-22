.class public Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;
.super Landroid/os/Handler;
.source "LSendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/LSendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BitmapRecycleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/LSendUi;


# direct methods
.method protected constructor <init>(Lcom/android/nfc/beam/LSendUi;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/nfc/beam/LSendUi$BitmapRecycleHandler;->this$0:Lcom/android/nfc/beam/LSendUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 93
    const-string v1, "LSendUi"

    const-string v2, "Unknown message received"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_c
    :goto_c
    return-void

    .line 85
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 86
    .local v0, "mRecycle":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 87
    const-string v1, "LSendUi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BitmapRecycleHandler recycle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c

    .line 83
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
