.class Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;
.super Ljava/lang/Object;
.source "LNfcToastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcToastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToastMessage"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mLength:I

.field mMessage:Ljava/lang/String;

.field mMessageId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # I
    .param p3, "length"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mMessageId:I

    .line 89
    iput p3, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mLength:I

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mMessage:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mLength:I

    .line 84
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getLength()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mLength:I

    return v0
.end method

.method getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method getMessageId()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/android/nfc/utils/LNfcToastHandler$ToastMessage;->mMessageId:I

    return v0
.end method
