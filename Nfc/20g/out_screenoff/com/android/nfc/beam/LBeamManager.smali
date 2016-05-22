.class public Lcom/android/nfc/beam/LBeamManager;
.super Lcom/android/nfc/beam/BeamManager;
.source "LBeamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/LBeamManager$Singleton;
    }
.end annotation


# static fields
.field static final ACTION_WPS_DATA_RECEIVED:Ljava/lang/String; = "com.lge.nfc.action.WPS_DATA_RECEIVED"

.field private static final DBG:Z

.field static final EXTRA_NFC_RECEIVED_TYPE:Ljava/lang/String; = "receive_type"

.field static final EXTRA_PAYLOAD:Ljava/lang/String; = "payload"

.field static final EXTRA_RECORDTYPE:Ljava/lang/String; = "RecordType"

.field private static final TAG:Ljava/lang/String; = "LBeamManager"

.field public static final TYPE_WPS_MIMENAME:Ljava/lang/String; = "application/vnd.wfa.wsc"


# instance fields
.field private isRegisterReceiver:Z

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/LBeamManager;->DBG:Z

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/LBeamManager;->isRegisterReceiver:Z

    .line 132
    new-instance v0, Lcom/android/nfc/beam/LBeamManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/LBeamManager$1;-><init>(Lcom/android/nfc/beam/LBeamManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/LBeamManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/LBeamManager;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/nfc/beam/LBeamManager;-><init>()V

    return-void
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/nfc/beam/LBeamManager;->DBG:Z

    return v0
.end method

.method public static bridge synthetic getInstance()Lcom/android/nfc/beam/BeamManager;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lcom/android/nfc/beam/LBeamManager;->getInstance()Lcom/android/nfc/beam/LBeamManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/nfc/beam/LBeamManager;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/nfc/beam/LBeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/LBeamManager;

    return-object v0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/android/nfc/beam/LBeamManager;->isRegisterReceiver:Z

    if-eqz v1, :cond_5

    .line 65
    :goto_4
    return-void

    .line 61
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/beam/LBeamManager;->isRegisterReceiver:Z

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.nfc.beam.ACTION_INIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/nfc/beam/LBeamManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method


# virtual methods
.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/LBeamManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 71
    if-eqz p1, :cond_7

    if-nez p2, :cond_12

    .line 72
    :cond_7
    sget-boolean v0, Lcom/android/nfc/beam/LBeamManager;->DBG:Z

    const-string v1, "LBeamManager"

    const-string v2, "handoverData is null"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v0

    goto :goto_11
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/LBeamManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public startWPSBeamSend(Landroid/content/Context;Landroid/nfc/NdefMessage;Landroid/os/UserHandle;)Z
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/nfc/NdefMessage;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const v11, 0x7f080044

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    const-string v7, "LBeamManager"

    const-string v8, "doWPSHandover"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-nez p2, :cond_19

    .line 89
    const-string v7, "LBeamManager"

    const-string v8, "response is null"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1, v11, v6}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    .line 129
    :goto_18
    return v5

    .line 93
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/LBeamManager;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 96
    .local v3, "records":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_25

    array-length v7, v3

    if-nez v7, :cond_30

    .line 97
    :cond_25
    const-string v7, "LBeamManager"

    const-string v8, "records is null or length 0"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {p1, v11, v6}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_18

    .line 102
    :cond_30
    const/4 v1, 0x0

    .line 103
    .local v1, "isVaildWPSMessage":Z
    array-length v8, v3

    move v7, v5

    :goto_33
    if-lt v7, v8, :cond_3b

    .line 117
    :goto_35
    if-nez v1, :cond_68

    .line 118
    invoke-static {p1, v11, v6}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_18

    .line 103
    :cond_3b
    aget-object v2, v3, v7

    .line 104
    .local v2, "record":Landroid/nfc/NdefRecord;
    if-nez v2, :cond_42

    .line 103
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 107
    :cond_42
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    const-string v10, "application/vnd.wfa.wsc"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 108
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    if-eqz v7, :cond_5f

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_66

    .line 109
    :cond_5f
    const v7, 0x7f080045

    invoke-static {p1, v7, v6}, Lcom/android/nfc/utils/LNfcToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_18

    .line 112
    :cond_66
    const/4 v1, 0x1

    .line 113
    goto :goto_35

    .line 122
    .end local v2    # "record":Landroid/nfc/NdefRecord;
    :cond_68
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    .line 124
    .local v4, "wpspayload":[B
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.lge.nfc.action.WPS_DATA_RECEIVED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "receive_type"

    const-string v7, "P2P"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v5, "payload"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 127
    const-string v5, "RecordType"

    const-string v7, "Hs"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v5, v6

    .line 129
    goto :goto_18
.end method
