.class Lcom/android/nfc/LNfcCommon$1;
.super Ljava/util/HashSet;
.source "LNfcCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LNfcCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 176
    const-string v0, "com.lge.clock.alarmclock"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v0, "lge.intent.action.UNREAD_MESSAGES"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v0, "com.lge.provider.Telephony.LGE_CMAS_RECEIVED"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v0, "android.intent.action.wapservice.push"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v0, "android.intent.action.wapservice.cp"

    invoke-virtual {p0, v0}, Lcom/android/nfc/LNfcCommon$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
