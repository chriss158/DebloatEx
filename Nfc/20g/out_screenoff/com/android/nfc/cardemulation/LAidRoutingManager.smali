.class public Lcom/android/nfc/cardemulation/LAidRoutingManager;
.super Lcom/android/nfc/cardemulation/AidRoutingManager;
.source "LAidRoutingManager.java"


# static fields
.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final TAG:Ljava/lang/String; = "LAidRoutingManager"

.field protected static sManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;


# instance fields
.field mDefaultRouteAidRoutingMgr:I

.field mPaymentAid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    .line 34
    sput-object p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->sManager:Lcom/android/nfc/cardemulation/LAidRoutingManager;

    .line 37
    return-void
.end method


# virtual methods
.method public configureRouting(Ljava/util/HashMap;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-direct {v5, v13}, Landroid/util/SparseArray;-><init>(I)V

    .line 47
    .local v5, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    .local v12, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3d

    .line 58
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 59
    :try_start_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 60
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v15, "LAidRoutingManager"

    const-string v16, "Routing table unchanged, not updating"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    monitor-exit v14
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_13b

    const/4 v13, 0x0

    .line 142
    :goto_3c
    return v13

    .line 49
    :cond_3d
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6f

    const/4 v11, 0x0

    .line 51
    .local v11, "route":I
    :goto_50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "aid":Ljava/lang/String;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5, v11, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 53
    .local v9, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v5, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 50
    .end local v2    # "aid":Ljava/lang/String;
    .end local v9    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "route":I
    :cond_6f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultOffHostRoute:I

    goto :goto_50

    .line 65
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_74
    :try_start_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 66
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 67
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 68
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_a0

    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v13, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 84
    .local v8, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_a0

    .line 85
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b5

    .line 107
    .end local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lt v10, v13, :cond_14f

    .line 58
    monitor-exit v14
    :try_end_ac
    .catchall {:try_start_74 .. :try_end_ac} :catchall_13b

    .line 140
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 142
    const/4 v13, 0x1

    goto :goto_3c

    .line 85
    .end local v10    # "i":I
    .restart local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b5
    :try_start_b5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 88
    .local v7, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_c7
    :goto_c7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 89
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 91
    .restart local v11    # "route":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    if-eq v11, v13, :cond_c7

    .line 92
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Adding AID "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for default "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 93
    const-string v19, "route, because a conflicting shorter AID will be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 94
    const-string v19, "added to the routing table"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 92
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v13, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    if-eqz v13, :cond_13e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13e

    .line 96
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v17, "LAidRoutingManager"

    const-string v18, "Selected payment has priority, SKIP"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v13, v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 58
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "defaultRouteAid":Ljava/lang/String;
    .end local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "route":I
    :catchall_13b
    move-exception v13

    monitor-exit v14
    :try_end_13d
    .catchall {:try_start_b5 .. :try_end_13d} :catchall_13b

    throw v13

    .line 99
    .restart local v2    # "aid":Ljava/lang/String;
    .restart local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "defaultRouteAid":Ljava/lang/String;
    .restart local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "route":I
    :cond_13e
    :try_start_13e
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v7, v0}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_c7

    .line 108
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "defaultRouteAid":Ljava/lang/String;
    .end local v8    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "route":I
    .restart local v10    # "i":I
    :cond_14f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 109
    .restart local v11    # "route":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    if-eq v11, v13, :cond_171

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 111
    .local v6, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_16b
    :goto_16b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_175

    .line 107
    .end local v6    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_171
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a1

    .line 111
    .restart local v6    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_175
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .restart local v2    # "aid":Ljava/lang/String;
    const-string v15, "*"

    invoke-virtual {v2, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_228

    .line 113
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    if-nez v15, :cond_193

    .line 114
    sget-boolean v15, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v16, "LAidRoutingManager"

    const-string v17, "This device does not support prefix AIDs."

    invoke-static/range {v15 .. v17}, Lcom/android/nfc/utils/LNfcLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_16b

    .line 115
    :cond_193
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1dd

    .line 116
    sget-boolean v15, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v16, "LAidRoutingManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Routing prefix AID "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 117
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 116
    invoke-static/range {v15 .. v17}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    const/16 v16, 0x0

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    .line 119
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto :goto_16b

    .line 121
    :cond_1dd
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mAidMatchingSupport:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_16b

    .line 122
    sget-boolean v15, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v16, "LAidRoutingManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Routing prefix AID "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 123
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 122
    invoke-static/range {v15 .. v17}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    const/16 v16, 0x0

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    .line 125
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V

    goto/16 :goto_16b

    .line 130
    :cond_228
    sget-boolean v15, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v16, "LAidRoutingManager"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Routing exact AID "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " to route "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 130
    invoke-static/range {v15 .. v17}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v15

    invoke-virtual {v15, v2, v11}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;I)V
    :try_end_255
    .catchall {:try_start_13e .. :try_end_255} :catchall_13b

    goto/16 :goto_16b
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 152
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v1, "Selected Payment AID:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    if-nez v1, :cond_12

    .line 160
    :goto_11
    return-void

    .line 155
    :cond_12
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_15
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_26

    .line 155
    monitor-exit v2

    goto :goto_11

    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v1

    .line 156
    :cond_26
    :try_start_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "aid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "        \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_23

    goto :goto_1b
.end method

.method public setDefaultDest(I)V
    .registers 2
    .param p1, "route"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRouteAidRoutingMgr:I

    .line 41
    iput p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mDefaultRoute:I

    .line 42
    return-void
.end method

.method public setDefaultPaymentAidList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "paymentAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LAidRoutingManager;->mPaymentAid:Ljava/util/ArrayList;

    .line 147
    return-void
.end method
