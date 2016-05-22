.class public Lcom/android/nfc/cardemulation/VRegisteredAidCache;
.super Lcom/android/nfc/cardemulation/LRegisteredAidCache;
.source "VRegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;
    }
.end annotation


# static fields
.field static final POWER_STATE_ALL:I = 0x7

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "VRegisteredAidCache"


# instance fields
.field final mAidToOffHostServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

.field mHostAIDPowerState:I

.field mNextTapComponent:Landroid/content/ComponentName;

.field mServicesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

.field mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/VRegisteredServicesCache;Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/VRegisteredServicesCache;
    .param p3, "callback"    # Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mAidToOffHostServices:Ljava/util/TreeMap;

    .line 77
    iput-object p2, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    .line 78
    new-instance v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    .line 79
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLRoutingManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 80
    iput-object p3, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mCallback:Lcom/android/nfc/cardemulation/VRegisteredAidCache$Callback;

    .line 88
    const/16 v0, 0x41

    iput v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mHostAIDPowerState:I

    .line 91
    return-void
.end method


# virtual methods
.method public onRoutingTableChanged()V
    .registers 3

    .prologue
    .line 216
    const-string v0, "VRegisteredAidCache"

    const-string v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_a
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->generateAidCacheLocked()V

    .line 217
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected preProcessAid(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->getAidMatchingPlatform()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 99
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 102
    :cond_2a
    return-void
.end method

.method updateRoutingLocked()V
    .registers 24

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mNfcEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    .line 108
    sget-boolean v18, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v19, "VRegisteredAidCache"

    const-string v20, "Not updating routing table because NFC is off."

    invoke-static/range {v18 .. v20}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_11
    return-void

    .line 111
    :cond_12
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    .line 112
    .local v15, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v10, "paymentAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 114
    :cond_29
    :goto_29
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_61

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVRoutingManager:Lcom/android/nfc/cardemulation/VAidRoutingManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->configureRoutingforNxp(Ljava/util/HashMap;)Z

    move-result v13

    .line 208
    .local v13, "result":Z
    sget-object v18, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mAutomaticSwitchingSupport:Z

    move/from16 v18, v0

    if-eqz v18, :cond_58

    if-eqz v13, :cond_58

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->isOverflow:Z

    move/from16 v18, v0

    if-eqz v18, :cond_58

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPopupList:Lcom/android/nfc/cardemulation/LCardEmulationPopupList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/LCardEmulationPopupList;->applyHostCardEmulationAutomaticSwitchingPopup()Z

    .line 211
    :cond_58
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->isOverflow:Z

    goto :goto_11

    .line 115
    .end local v13    # "result":Z
    :cond_61
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 116
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    .local v3, "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 118
    .local v12, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    move/from16 v19, v0

    if-nez v19, :cond_98

    .line 119
    sget-boolean v19, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v20, "VRegisteredAidCache"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Not routing AID "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " on request."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 122
    :cond_98
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_29

    .line 124
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11b

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mVServiceCache:Lcom/android/nfc/cardemulation/VRegisteredServicesCache;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/nfc/cardemulation/VRegisteredServicesCache;->getApduServiceInfoNxp(Landroid/nfc/cardemulation/ApduServiceInfo;)Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    move-result-object v6

    .line 129
    .local v6, "defaultServiceNxp":Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfoNxp;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    move-result-object v16

    .line 131
    .local v16, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 132
    .local v7, "isDefaultPayment":Z
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VRegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 133
    .local v8, "isForeground":Z
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v9

    .line 137
    .local v9, "isOnHost":Z
    const/16 v17, 0x1

    .line 140
    .local v17, "weight":I
    const/16 v11, 0xc7

    .line 180
    .local v11, "powerstate":I
    if-eqz v9, :cond_116

    const/4 v14, 0x0

    .line 181
    .local v14, "route":I
    :goto_ed
    if-eqz v8, :cond_f1

    .line 182
    const/16 v17, 0x3

    .line 184
    :cond_f1
    if-eqz v7, :cond_f5

    .line 185
    const/16 v17, 0x2

    .line 187
    :cond_f5
    new-instance v4, Lcom/android/nfc/cardemulation/AidElement;

    move/from16 v0, v17

    invoke-direct {v4, v3, v0, v14, v11}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 188
    .local v4, "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "payment"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 191
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_29

    .line 180
    .end local v4    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v14    # "route":I
    :cond_116
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->getSeId()I

    move-result v14

    goto :goto_ed

    .line 193
    .end local v6    # "defaultServiceNxp":Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    .end local v7    # "isDefaultPayment":Z
    .end local v8    # "isForeground":Z
    .end local v9    # "isOnHost":Z
    .end local v11    # "powerstate":I
    .end local v16    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    .end local v17    # "weight":I
    :cond_11b
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_141

    .line 196
    new-instance v4, Lcom/android/nfc/cardemulation/AidElement;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0xc7

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 197
    .restart local v4    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    .line 199
    .end local v4    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_141
    iget-object v0, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_29

    .line 201
    new-instance v4, Lcom/android/nfc/cardemulation/AidElement;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0xc7

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;III)V

    .line 202
    .restart local v4    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29
.end method
