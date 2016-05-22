.class public Lcom/android/nfc/lgsharing/LSharingManager;
.super Ljava/lang/Object;
.source "LSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/lgsharing/LSharingManager$SendTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LG_SHARING_TYPE_PREFIX:Ljava/lang/String; = "lge.com:Sharingpackage-"

.field private static final TAG:Ljava/lang/String; = "LSharingManager"


# instance fields
.field mContext:Landroid/content/Context;

.field private final mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

.field private mReceiveMessage:Landroid/nfc/NdefMessage;

.field mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

.field mSharingCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/nfcaddon/ILGSharingMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSharingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    .line 36
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->isInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Lcom/android/nfc/lgsharing/MusicShareDataParser;

    invoke-direct {v0, p1}, Lcom/android/nfc/lgsharing/MusicShareDataParser;-><init>(Landroid/content/Context;)V

    :cond_1c
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    .line 42
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    return v0
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 64
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    if-nez v0, :cond_12

    .line 63
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public makeSendMessage()Landroid/nfc/NdefMessage;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 68
    sget-boolean v2, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v3, "LSharingManager"

    const-string v4, "makeSendMessage"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 77
    :cond_16
    :goto_16
    return-object v1

    .line 73
    :cond_17
    iget-object v2, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 74
    .local v0, "mapCollections":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/nfc/NdefRecord;>;"
    if-eqz v0, :cond_16

    .line 77
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v1, v2

    goto :goto_16
.end method

.method public onLlcpActivated()V
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 149
    iget-object v9, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    if-nez v9, :cond_1b

    iget-object v9, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 150
    :cond_11
    sget-boolean v8, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v9, "LSharingManager"

    const-string v10, "onLlcpActivated : Map is empty or mMusicShareDataParser is null"

    invoke-static {v8, v9, v10}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1a
    :goto_1a
    return-void

    .line 154
    :cond_1b
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 155
    iget-object v9, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 157
    .local v3, "keyList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 159
    .local v4, "keys":[Ljava/lang/String;
    array-length v9, v4

    :goto_35
    if-lt v8, v9, :cond_4b

    .line 180
    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    if-eqz v8, :cond_1a

    .line 181
    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    invoke-virtual {v8}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->getNdefRecord()Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 182
    .local v6, "record":Landroid/nfc/NdefRecord;
    if-eqz v6, :cond_1a

    .line 183
    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    const-string v9, "com.lge.musicshare"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 159
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    :cond_4b
    aget-object v2, v4, v8

    .line 161
    .local v2, "key":Ljava/lang/String;
    :try_start_4d
    iget-object v10, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 159
    :cond_55
    :goto_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 165
    :cond_58
    iget-object v10, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/nfcaddon/ILGSharingMessageCallback;

    .line 166
    .local v0, "callback":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    if-eqz v0, :cond_55

    .line 170
    invoke-interface {v0}, Lcom/lge/nfcaddon/ILGSharingMessageCallback;->createPayload()[B

    move-result-object v5

    .line 171
    .local v5, "payload":[B
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "lge.com:Sharingpackage-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "recordType":Ljava/lang/String;
    new-instance v6, Landroid/nfc/NdefRecord;

    const/4 v10, 0x4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [B

    invoke-direct {v6, v10, v11, v12, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 173
    .restart local v6    # "record":Landroid/nfc/NdefRecord;
    iget-object v10, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_87} :catch_88

    goto :goto_55

    .line 174
    .end local v0    # "callback":Lcom/lge/nfcaddon/ILGSharingMessageCallback;
    .end local v5    # "payload":[B
    .end local v6    # "record":Landroid/nfc/NdefRecord;
    .end local v7    # "recordType":Ljava/lang/String;
    :catch_88
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "LSharingManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public onLlcpDeactivated()V
    .registers 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/nfc/lgsharing/LSharingManager;->sendBroadcastApplication()Z

    .line 190
    return-void
.end method

.method public receiveMessage(Landroid/nfc/NdefMessage;)Z
    .registers 6
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v1, "LSharingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiveMessage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    if-nez p1, :cond_1a

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_19
    return v0

    .line 86
    :cond_1a
    iput-object p1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    .line 87
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public resetSharingMap()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    .line 194
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    .line 195
    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    .line 196
    return-void
.end method

.method public sendBroadcastApplication()Z
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 95
    sget-boolean v5, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v6, "LSharingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendBroadcastApplication : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    if-nez v5, :cond_1e

    .line 130
    :cond_1d
    :goto_1d
    return v4

    .line 100
    :cond_1e
    iget-object v5, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 101
    .local v3, "records":[Landroid/nfc/NdefRecord;
    if-eqz v3, :cond_1d

    array-length v5, v3

    if-eqz v5, :cond_1d

    .line 105
    array-length v5, v3

    :goto_2a
    if-lt v4, v5, :cond_2e

    .line 130
    const/4 v4, 0x1

    goto :goto_1d

    .line 105
    :cond_2e
    aget-object v2, v3, v4

    .line 106
    .local v2, "record":Landroid/nfc/NdefRecord;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    if-nez v6, :cond_3b

    .line 105
    :cond_38
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 110
    :cond_3b
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V

    .line 112
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    if-eqz v6, :cond_56

    const-string v6, "lge.com:Sharingpackage-com.lge.musicshare"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 113
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mMusicShareDataParser:Lcom/android/nfc/lgsharing/MusicShareDataParser;

    invoke-virtual {v6, v2}, Lcom/android/nfc/lgsharing/MusicShareDataParser;->parseNdefRecord(Landroid/nfc/NdefRecord;)Z

    goto :goto_38

    .line 117
    :cond_56
    const-string v6, "lge.com:Sharingpackage-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_75

    .line 118
    sget-boolean v6, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v7, "LSharingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "invalidPreFix : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 121
    :cond_75
    const-string v6, "lge.com:Sharingpackage-"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-boolean v6, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v7, "LSharingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendBroadcast : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.lge.nfc.action.lg_sharing"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "nfc/lgsharing"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v6, "com.lge.nfc.extra.payload"

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 127
    iget-object v6, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const-string v8, "android.permission.NFC"

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public sendSharingServices(Ljava/lang/Object;)V
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 135
    :cond_c
    sget-boolean v0, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v1, "LSharingManager"

    const-string v2, "sendSharingServices : Map is empty"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_15
    return-void

    .line 139
    :cond_16
    monitor-enter p1

    .line 140
    :try_start_17
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    if-eqz v0, :cond_22

    .line 141
    const-string v0, "LSharingManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_22
    new-instance v0, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;-><init>(Lcom/android/nfc/lgsharing/LSharingManager;)V

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    .line 144
    iget-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSendTask:Lcom/android/nfc/lgsharing/LSharingManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/lgsharing/LSharingManager$SendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    monitor-exit p1

    goto :goto_15

    :catchall_33
    move-exception v0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public setMode(Ljava/lang/String;Lcom/lge/nfcaddon/ILGSharingMessageCallback;)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lge/nfcaddon/ILGSharingMessageCallback;

    .prologue
    const/4 v0, 0x1

    .line 45
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    if-nez v1, :cond_9

    .line 46
    :cond_7
    const/4 v0, 0x0

    .line 59
    :goto_8
    return v0

    .line 49
    :cond_9
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 50
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_16
    if-nez p2, :cond_22

    .line 54
    sget-boolean v1, Lcom/android/nfc/lgsharing/LSharingManager;->DBG:Z

    const-string v2, "LSharingManager"

    const-string v3, "callback is null"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 58
    :cond_22
    iget-object v1, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mSharingCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public setRunningAndroidBeam()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/lgsharing/LSharingManager;->mReceiveMessage:Landroid/nfc/NdefMessage;

    .line 92
    return-void
.end method
