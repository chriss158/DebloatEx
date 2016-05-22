.class public Lcom/android/nfc/cardemulation/VAidRoutingManager;
.super Lcom/android/nfc/cardemulation/LAidRoutingManager;
.source "VAidRoutingManager.java"


# static fields
.field static final AID_MATCHING_K:I = 0x2

.field static final AID_MATCHING_L:I = 0x1

.field static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "VAidRoutingManager"


# instance fields
.field dumpAidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;"
        }
    .end annotation
.end field

.field final mAidMatchingPlatform:I

.field mPowerForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/LAidRoutingManager;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->doGetAidMatchingPlatform()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    .line 56
    sget-boolean v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v1, "VAidRoutingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAidMatchingPlatform=0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private commit(Ljava/util/Hashtable;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 212
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/VNfcService;->clearAidTable()V

    .line 217
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_24

    .line 227
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/VNfcService;->commitRouting()V

    .line 228
    return-void

    .line 218
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 219
    .local v0, "element":Lcom/android/nfc/cardemulation/AidElement;
    sget-boolean v3, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    if-eqz v3, :cond_37

    const-string v3, "VAidRoutingManager"

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_37
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v3

    .line 221
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v5

    .line 223
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v6

    .line 220
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/nfc/VNfcService;->routeAids(Ljava/lang/String;II)V

    goto :goto_16
.end method


# virtual methods
.method clearNfcRoutingTableLocked()V
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/android/nfc/VNfcService;->getInstance()Lcom/android/nfc/VNfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/VNfcService;->clearAidTable()V

    .line 66
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 68
    return-void
.end method

.method public configureRoutingforNxp(Ljava/util/HashMap;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRouteAidRoutingMgr:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    .line 76
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    const/16 v19, 0xf3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a0

    .line 77
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    .line 81
    :cond_22
    :goto_22
    sget-boolean v18, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v19, "VAidRoutingManager"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mDefaultRoute = 0x"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v16, Ljava/util/Hashtable;

    const/16 v18, 0x32

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 85
    .local v16, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 86
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/util/HashMap;-><init>(I)V

    .line 87
    .local v17, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v14, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_74
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_b8

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 108
    :try_start_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13a

    .line 109
    sget-boolean v18, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v20, "VAidRoutingManager"

    const-string v21, "Routing table unchanged, not updating"

    move/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v19
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_256

    const/16 v18, 0x0

    .line 206
    :goto_9f
    return v18

    .line 78
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v14    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v17    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    const/16 v19, 0xf4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22

    .line 79
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    goto/16 :goto_22

    .line 89
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v14    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .restart local v17    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 90
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/AidElement;

    .line 91
    .local v10, "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v15

    .line 92
    .local v15, "route":I
    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v13

    .line 93
    .local v13, "power":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_d9

    .line 94
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultOffHostRoute:I

    .line 95
    invoke-virtual {v10, v15}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 97
    :cond_d9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "aid":Ljava/lang/String;
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v6, v15, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 99
    .local v11, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v6, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-boolean v19, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v20, "VAidRoutingManager"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "#######Routing AID "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to route "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 104
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " with power "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 103
    invoke-static/range {v19 .. v21}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 114
    .end local v3    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "power":I
    .end local v15    # "route":I
    :cond_13a
    :try_start_13a
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 115
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 116
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 117
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_167

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_189

    .line 134
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 135
    .local v9, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_189

    .line 136
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_183
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1aa

    .line 165
    .end local v9    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_189
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_273

    .line 107
    monitor-exit v19
    :try_end_199
    .catchall {:try_start_13a .. :try_end_199} :catchall_256

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/VAidRoutingManager;->commit(Ljava/util/Hashtable;)V

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    .line 206
    const/16 v18, 0x1

    goto/16 :goto_9f

    .line 136
    .end local v12    # "i":I
    .restart local v9    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1aa
    :try_start_1aa
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 139
    .local v8, "defaultRouteAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1be
    :goto_1be
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_183

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 140
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .restart local v3    # "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 142
    .restart local v15    # "route":I
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1be

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v15, v0, :cond_1be

    .line 143
    sget-boolean v18, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v22, "VAidRoutingManager"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Adding AID "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for default "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 144
    const-string v24, "route, because a conflicting shorter AID will be added"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 145
    const-string v24, "to the routing table"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 143
    move/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/nfc/cardemulation/AidElement;

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v22

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/nfc/cardemulation/AidElement;

    invoke-virtual/range {v18 .. v18}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v18

    move/from16 v0, v22

    move/from16 v1, v18

    if-le v0, v1, :cond_259

    .line 151
    const-string v18, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " has priority, SKIP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1be

    .line 107
    .end local v3    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "defaultRouteAid":Ljava/lang/String;
    .end local v9    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "route":I
    :catchall_256
    move-exception v18

    monitor-exit v19
    :try_end_258
    .catchall {:try_start_1aa .. :try_end_258} :catchall_256

    throw v18

    .line 154
    .restart local v3    # "aid":Ljava/lang/String;
    .restart local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v8    # "defaultRouteAid":Ljava/lang/String;
    .restart local v9    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "route":I
    :cond_259
    :try_start_259
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/AidElement;

    .line 155
    .restart local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 156
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1be

    .line 166
    .end local v3    # "aid":Ljava/lang/String;
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "defaultRouteAid":Ljava/lang/String;
    .end local v9    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v15    # "route":I
    .restart local v12    # "i":I
    :cond_273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 167
    .restart local v15    # "route":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mDefaultRoute:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v15, v0, :cond_2a1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 169
    .local v7, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_29b
    :goto_29b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2a5

    .line 165
    .end local v7    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2a1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_18a

    .line 169
    .restart local v7    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2a5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .restart local v3    # "aid":Ljava/lang/String;
    const-string v20, "*"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_366

    .line 171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    if-nez v20, :cond_2c5

    .line 172
    const-string v20, "VAidRoutingManager"

    const-string v21, "This device does not support prefix AIDs."

    invoke-static/range {v20 .. v21}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29b

    .line 173
    :cond_2c5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_31c

    .line 174
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v21, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Routing prefix AID "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to route "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 175
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 174
    invoke-static/range {v20 .. v22}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/AidElement;

    .line 178
    .restart local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    const/16 v20, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/nfc/cardemulation/AidElement;->setAid(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29b

    .line 182
    .end local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_31c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29b

    .line 183
    const-string v20, "VAidRoutingManager"

    const-string v21, "Routing AID in AID_MATCHING_EXACT_OR_PREFIX"

    invoke-static/range {v20 .. v21}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v21, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Routing prefix AID "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to route "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 185
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 184
    invoke-static/range {v20 .. v22}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/AidElement;

    .line 187
    .restart local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29b

    .line 191
    .end local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_366
    sget-boolean v20, Lcom/android/nfc/cardemulation/VAidRoutingManager;->DBG:Z

    const-string v21, "VAidRoutingManager"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Routing exact AID "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to route "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 192
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 191
    invoke-static/range {v20 .. v22}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/AidElement;

    .line 194
    .restart local v10    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_399
    .catchall {:try_start_259 .. :try_end_399} :catchall_256

    goto/16 :goto_29b
.end method

.method public native doGetAidMatchingPlatform()I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/LAidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    if-nez v1, :cond_8

    .line 253
    :cond_7
    :goto_7
    return-void

    .line 235
    :cond_8
    iget-object v2, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_b
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_42

    .line 235
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_70

    .line 243
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    const-string v1, "Foregroud AID:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 246
    iget-object v2, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    :try_start_2d
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_73

    .line 246
    monitor-exit v2

    goto :goto_7

    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_3f

    throw v1

    .line 236
    :cond_42
    :try_start_42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "aid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AidElement;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_15

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "        \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 235
    .end local v0    # "aid":Ljava/lang/String;
    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_42 .. :try_end_72} :catchall_70

    throw v1

    .line 247
    :cond_73
    :try_start_73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .restart local v0    # "aid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->dumpAidMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AidElement;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_37

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "        \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_73 .. :try_end_a0} :catchall_3f

    goto :goto_37
.end method

.method public getAidMatchMode()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingSupport:I

    return v0
.end method

.method public getAidMatchingPlatform()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/android/nfc/cardemulation/VAidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method
