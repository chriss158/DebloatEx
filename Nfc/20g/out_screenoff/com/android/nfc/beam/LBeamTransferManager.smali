.class public Lcom/android/nfc/beam/LBeamTransferManager;
.super Lcom/android/nfc/beam/BeamTransferManager;
.source "LBeamTransferManager.java"


# static fields
.field static final MEDIA_SCAN_CHECK_MS:I = 0x7d0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field static final MSG_MEDIA_SCAN_FAIL:I = 0x1

.field protected static final PREF:Ljava/lang/String; = "NfcHandoverPrefs"

.field protected static final PREF_BLUETOOTH_ID:Ljava/lang/String; = "bluetoothID"

.field protected static final PREF_INCOMING:Ljava/lang/String; = "incoming"

.field protected static final PREF_NOTIFICATION_ID:Ljava/lang/String; = "notificationID"

.field private static final TAG:Ljava/lang/String; = "LBeamTransferManager"


# instance fields
.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field public mSendMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    .line 68
    const-string v0, "Download"

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->BEAM_DIR:Ljava/lang/String;

    .line 72
    if-eqz p3, :cond_1f

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_1f

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 73
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mSendMimeType:Ljava/lang/String;

    .line 77
    :cond_1f
    const-string v0, "NfcHandoverPrefs"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2d

    .line 91
    :cond_2c
    :goto_2c
    return-void

    .line 81
    :cond_2d
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2c

    .line 86
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "notificationID"

    iget v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "incoming"

    iget-boolean v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bluetoothID"

    iget v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mBluetoothTransferId:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2c
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .param p0, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "newFile":Ljava/io/File;
    return-object v0
.end method

.method public static initialNotification(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 424
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 425
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    if-nez v4, :cond_d

    .line 465
    :cond_c
    :goto_c
    return-void

    .line 429
    :cond_d
    const-string v8, "NfcHandoverPrefs"

    const/4 v9, 0x4

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 430
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_c

    .line 433
    const-string v8, "incoming"

    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 434
    .local v2, "incoming":Z
    const-string v8, "notificationID"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 435
    .local v7, "transferId":I
    const-string v8, "bluetoothID"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 436
    .local v0, "bluetoothId":I
    const-string v8, "LBeamTransferManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "initialNotification - incoming : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", transferId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    if-ltz v0, :cond_57

    .line 439
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, "cancelIntent":Landroid/content/Intent;
    const-string v8, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    :cond_57
    if-ltz v7, :cond_c

    .line 448
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 449
    .local v6, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "incoming"

    invoke-interface {v6, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    const-string v8, "notificationID"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 451
    const-string v8, "bluetoothID"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 454
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .local v3, "notBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 459
    if-eqz v2, :cond_8a

    sget v8, Lcom/lge/internal/R$drawable;->stat_sys_download_complete2:I

    :goto_7b
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 462
    invoke-static {p0, v3}, Lcom/android/nfc/beam/LBeamTransferManager;->setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 464
    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v4, v8, v7, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_c

    .line 460
    :cond_8a
    sget v8, Lcom/lge/internal/R$drawable;->stat_sys_upload_complete:I

    goto :goto_7b
.end method

.method private makeIntentForFileManager()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->BEAM_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "downloadFolderName":Ljava/lang/String;
    sget-object v2, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "LBeamTransferManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "makeIntentForFileManager : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.lge.filemanager"

    const-string v3, "com.lge.filemanager.view.FolderActivity2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v2, "com.lge.filemanager.intent.action.EXECUTE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v2, "shortcutKey"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v2, "shortcutIsDir"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 497
    return-object v1
.end method

.method public static setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    const v1, 0x7f080006

    .line 418
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 419
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 420
    return-void
.end method


# virtual methods
.method buildViewIntent()Landroid/content/Intent;
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 222
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 272
    :cond_24
    :goto_24
    return-object v6

    .line 226
    :cond_25
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    if-nez v7, :cond_31

    .line 227
    const-string v7, "LBeamTransferManager"

    const-string v8, "Invalid Sequence : mMimeTypes is null"

    invoke-static {v7, v8}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 232
    :cond_31
    const-string v7, "HandoverAutoAppLaunch"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 233
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_24

    .line 237
    invoke-super {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v6

    goto :goto_24

    .line 240
    :cond_4a
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_24

    .line 246
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 247
    .local v4, "mimeType":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_c2

    .line 248
    if-eqz v4, :cond_c2

    const-string v7, "image/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    const-string v7, "video/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 251
    :cond_7b
    iget-object v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    .line 255
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 256
    .local v3, "filePathIndex":I
    if-lez v3, :cond_24

    .line 259
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "bucket":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "bucketId":Ljava/lang/String;
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "bucketId"

    invoke-virtual {v7, v8, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 263
    .local v5, "path":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 264
    .local v6, "viewIntent":Landroid/content/Intent;
    const-string v7, "mediaTypes"

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_24

    .line 268
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "bucketId":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "filePathIndex":I
    .end local v5    # "path":Landroid/net/Uri;
    .end local v6    # "viewIntent":Landroid/content/Intent;
    :cond_c2
    invoke-super {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v6

    .line 269
    .restart local v6    # "viewIntent":Landroid/content/Intent;
    if-eqz v6, :cond_24

    .line 270
    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method checkCancellingStatus()Z
    .registers 3

    .prologue
    .line 409
    iget v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    .line 410
    const/4 v0, 0x0

    .line 414
    :goto_6
    return v0

    .line 413
    :cond_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/LBeamTransferManager;->updateStateAndNotification(I)V

    .line 414
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected checkSendIntentWhenNotificationTouch()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 386
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    if-nez v2, :cond_b

    :cond_9
    move v2, v3

    .line 405
    :goto_a
    return v2

    .line 391
    :cond_b
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 395
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    move v2, v3

    .line 396
    goto :goto_a

    .line 399
    :cond_33
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 400
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_45

    .line 405
    const/4 v2, 0x1

    goto :goto_a

    .line 401
    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v2, v3

    .line 402
    goto :goto_a
.end method

.method destroy()V
    .registers 5

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    :goto_6
    return-void

    .line 100
    :cond_7
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_18

    .line 107
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/nfc/beam/LBeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_6

    .line 100
    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_d
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "srcFile"    # Ljava/io/File;

    .prologue
    .line 298
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_8

    .line 299
    :cond_6
    const/4 v0, 0x0

    .line 305
    :cond_7
    :goto_7
    return-object v0

    .line 301
    :cond_8
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {p3, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 305
    invoke-static {p1, p2}, Lcom/android/nfc/beam/LBeamTransferManager;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_7
.end method

.method protected getFileMimeType(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "mediaMimeType":Ljava/lang/String;
    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 289
    const-string v2, "LBeamTransferManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Change MimeType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object v1, v0

    .line 292
    :cond_37
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 510
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_45

    iget v3, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_45

    .line 512
    const-string v3, "LBeamTransferManager"

    const-string v4, "Media scan timeout/fail"

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_22

    .line 530
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lcom/android/nfc/beam/BeamTransferManager;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    return v3

    .line 513
    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 514
    .local v2, "mPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v1, "dstFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 516
    const-string v4, "LBeamTransferManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remove : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 519
    .end local v1    # "dstFile":Ljava/io/File;
    .end local v2    # "mPath":Ljava/lang/String;
    :cond_45
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_75

    iget v3, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_75

    .line 521
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_70

    const-string v3, "LBeamTransferManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Transfer timed out for id(Cancelling): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_70
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/LBeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_1d

    .line 523
    :cond_75
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_1d

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v3, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mBluetoothTransferId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v3, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    sget-object v3, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "LBeamTransferManager"

    const-string v4, "MSG_TRANSFER_TIMEOUT, send STOP_HANDOVER_TRANSFER."

    invoke-static {v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method protected isRequireMediaScannerMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 216
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "application/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 217
    const-string v0, "text/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 215
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 470
    iget v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-eq v1, v0, :cond_14

    iget v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    iget v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14

    .line 471
    const/4 v0, 0x0

    .line 473
    :cond_14
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 535
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 538
    const-string v0, "LBeamTransferManager"

    const-string v1, "transfer failed already"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_37

    .line 551
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 541
    :cond_15
    if-nez p2, :cond_3a

    .line 543
    :try_start_17
    const-string v0, "LBeamTransferManager"

    const-string v1, "Media scan fail"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    :goto_24
    iget v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 549
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_37

    goto :goto_13

    .line 535
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 546
    :cond_3a
    :try_start_3a
    invoke-super {p0, p1, p2}, Lcom/android/nfc/beam/BeamTransferManager;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    goto :goto_24
.end method

.method protected parseFilePath(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/:*?\"<>|"

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 480
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/android/nfc/beam/BeamTransferManager;->setBluetoothTransferId(I)V

    .line 481
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_14

    .line 482
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "bluetoothID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 483
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 485
    :cond_14
    monitor-exit p0

    return-void

    .line 480
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z
    .registers 15
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;
    .param p2, "result"    # Z

    .prologue
    const v7, 0x7f080005

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 334
    iget-boolean v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    if-eqz v4, :cond_71

    sget v4, Lcom/lge/internal/R$drawable;->stat_sys_download_complete2:I

    :goto_e
    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 337
    if-eqz p2, :cond_ef

    .line 338
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 339
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 340
    iget-boolean v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    if-eqz v4, :cond_e6

    .line 341
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f080009

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 342
    invoke-virtual {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v3

    .line 344
    .local v3, "viewIntent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mSuccessCount:I

    const/4 v7, 0x2

    if-lt v4, v7, :cond_44

    invoke-virtual {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->checkSendIntentWhenNotificationTouch()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 345
    :cond_44
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 346
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 347
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_66

    .line 348
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f080040

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 349
    invoke-direct {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->makeIntentForFileManager()Landroid/content/Intent;

    move-result-object v3

    .line 357
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_66
    :goto_66
    if-nez v3, :cond_99

    .line 358
    const-string v4, "LBeamTransferManager"

    const-string v6, "Invalid Sequence : Intent doesn\'t make since serveral problem(in buildViewIntent method)"

    invoke-static {v4, v6}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 382
    .end local v3    # "viewIntent":Landroid/content/Intent;
    :goto_70
    return v4

    .line 335
    :cond_71
    sget v4, Lcom/lge/internal/R$drawable;->stat_sys_upload_complete:I

    goto :goto_e

    .line 352
    .restart local v3    # "viewIntent":Landroid/content/Intent;
    :cond_74
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f080041

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "%d"

    new-array v10, v6, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mSuccessCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 353
    invoke-direct {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->makeIntentForFileManager()Landroid/content/Intent;

    move-result-object v3

    goto :goto_66

    .line 363
    :cond_99
    if-eqz v3, :cond_da

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 364
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "lge_ext/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 365
    const-string v4, "LBeamTransferManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendBroadcast : com.lge.nfc.beam.action.RECEIVE_DONE, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v4, "com.lge.nfc.beam.action.RECEIVE_DONE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 368
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v4, v5

    .line 369
    goto :goto_70

    .line 373
    :cond_da
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    const/4 v8, 0x0

    .line 372
    invoke-static {v4, v7, v3, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 374
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 381
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "viewIntent":Landroid/content/Intent;
    :cond_e6
    :goto_e6
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    move v4, v6

    .line 382
    goto :goto_70

    .line 378
    :cond_ef
    iget-object v4, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/nfc/beam/LBeamTransferManager;->setDownloadFailNotificationInfo(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_e6
.end method

.method setDownloadNotificationInfo(Landroid/app/Notification$Builder;)V
    .registers 6
    .param p1, "notBuilder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 311
    iget-boolean v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_37

    .line 312
    iget-object v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "beamString":Ljava/lang/String;
    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 318
    iget-boolean v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_41

    const v1, 0x1080081

    :goto_18
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 320
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 321
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 322
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 323
    const v1, 0x7f020005

    .line 324
    iget-object v2, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 323
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 327
    return-void

    .line 314
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_37
    iget-object v1, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_d

    .line 319
    :cond_41
    const v1, 0x1080088

    goto :goto_18
.end method

.method updateNotification()V
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x5

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    const-string v5, "LBeamTransferManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updateNotification : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(incoming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 122
    const v6, 0x1060059

    .line 121
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 123
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 124
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 127
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_7b

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-eq v5, v11, :cond_61

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-eq v5, v12, :cond_61

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7b

    .line 128
    :cond_61
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "incoming"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "notificationID"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "bluetoothID"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    :cond_7b
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-eqz v5, :cond_8d

    .line 136
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8d

    .line 137
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8d

    .line 138
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-ne v5, v9, :cond_ca

    .line 140
    :cond_8d
    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/LBeamTransferManager;->setDownloadNotificationInfo(Landroid/app/Notification$Builder;)V

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "progress":F
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTotalCount:I

    if-lez v5, :cond_a5

    .line 144
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTotalCount:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 145
    .local v3, "progressUnit":F
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mCurrentCount:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mProgress:F

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 147
    .end local v3    # "progressUnit":F
    :cond_a5
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTotalCount:I

    if-lez v5, :cond_c4

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_c4

    .line 148
    const/16 v5, 0x64

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 210
    .end local v2    # "progress":F
    :cond_b7
    :goto_b7
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 211
    :cond_c3
    :goto_c3
    return-void

    .line 150
    .restart local v2    # "progress":F
    :cond_c4
    const/16 v5, 0x64

    invoke-virtual {v1, v5, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_b7

    .line 158
    .end local v2    # "progress":F
    :cond_ca
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-ne v5, v11, :cond_e8

    .line 159
    const-string v5, "HandoverAutoAppLaunch"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 160
    const-string v5, "LBeamTransferManager"

    const-string v6, "STATE_SUCCESS, HandoverAutoAppLaunch is false"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v1, v9}, Lcom/android/nfc/beam/LBeamTransferManager;->setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z

    move-result v5

    if-nez v5, :cond_b7

    goto :goto_c3

    .line 165
    :cond_e8
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-ne v5, v11, :cond_160

    .line 166
    const-string v5, "HandoverAutoAppLaunch"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/nfcconfig/NfcConfigure;->IsNfcConfigureValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    .line 167
    const-string v5, "LBeamTransferManager"

    const-string v6, "STATE_SUCCESS, HandoverAutoAppLaunch is true"

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/nfc/beam/LBeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v4

    .line 170
    .local v4, "viewIntent":Landroid/content/Intent;
    if-eqz v4, :cond_143

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_143

    .line 171
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lge_ext/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 172
    const-string v5, "LBeamTransferManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendBroadcast : com.lge.nfc.beam.action.RECEIVE_DONE, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v5, "com.lge.nfc.beam.action.RECEIVE_DONE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 175
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_c3

    .line 179
    :cond_143
    const/4 v0, 0x0

    .line 180
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_14c

    .line 181
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 183
    :cond_14c
    if-eqz v0, :cond_c3

    .line 185
    :try_start_14e
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 186
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mTransferId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_15b} :catch_15d

    goto/16 :goto_c3

    :catch_15d
    move-exception v5

    goto/16 :goto_c3

    .line 192
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "viewIntent":Landroid/content/Intent;
    :cond_160
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    if-ne v5, v12, :cond_16c

    .line 193
    invoke-virtual {p0, v1, v8}, Lcom/android/nfc/beam/LBeamTransferManager;->setDownloadDoneNotificationInfo(Landroid/app/Notification$Builder;Z)Z

    move-result v5

    if-nez v5, :cond_b7

    goto/16 :goto_c3

    .line 196
    :cond_16c
    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_176

    iget v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_19f

    .line 197
    :cond_176
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 201
    iget-boolean v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mIncoming:Z

    if-eqz v5, :cond_19c

    sget v5, Lcom/lge/internal/R$drawable;->stat_sys_download_complete2:I

    :goto_17f
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 204
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 205
    iget-object v5, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mContext:Landroid/content/Context;

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_b7

    .line 202
    :cond_19c
    sget v5, Lcom/lge/internal/R$drawable;->stat_sys_upload_complete:I

    goto :goto_17f

    .line 207
    :cond_19f
    invoke-super {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    goto/16 :goto_c3
.end method

.method updateStateAndNotification(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 502
    invoke-super {p0, p1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 503
    iget v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 504
    iget-object v0, p0, Lcom/android/nfc/beam/LBeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    :cond_10
    return-void
.end method
