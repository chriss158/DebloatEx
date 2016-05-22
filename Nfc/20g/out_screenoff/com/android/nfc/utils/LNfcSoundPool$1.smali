.class Lcom/android/nfc/utils/LNfcSoundPool$1;
.super Landroid/util/SparseArray;
.source "LNfcSoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/utils/LNfcSoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .param p1, "$anonymous0"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 37
    const v0, 0x7f050002

    const-string v1, "system/media/audio/ui/NFC_Start.ogg"

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcSoundPool$1;->put(ILjava/lang/Object;)V

    .line 38
    const/high16 v0, 0x7f050000

    const-string v1, "system/media/audio/ui/NFC_End.ogg"

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcSoundPool$1;->put(ILjava/lang/Object;)V

    .line 39
    const v0, 0x7f050001

    const-string v1, "system/media/audio/ui/NFC_Error.ogg"

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/utils/LNfcSoundPool$1;->put(ILjava/lang/Object;)V

    .line 1
    return-void
.end method
