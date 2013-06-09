.class public Lcom/tencent/mm/sdk/platformtools/LBSManager;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static e:Lcom/tencent/mm/sdk/platformtools/a;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:I

.field private f:Lcom/tencent/mm/sdk/platformtools/b;

.field private g:Landroid/content/Context;

.field private h:Lcom/tencent/mm/sdk/platformtools/e;


# direct methods
.method private a()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "no wifi service"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "WIFILocation wifi info null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v4, Lcom/tencent/mm/sdk/platformtools/i;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tencent/mm/sdk/platformtools/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/g;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->d:I

    if-eqz v0, :cond_5

    const-string v1, "gps"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v4, 0x4348

    cmpg-float v1, v1, v4

    if-lez v1, :cond_1

    :cond_0
    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v4, 0x447a

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_5

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    if-eqz v3, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-int v6, v6

    if-eqz v6, :cond_3

    const-string v7, "MicroMsg.LBSManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setLocationCache ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] acc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " source:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    if-nez v7, :cond_2

    new-instance v7, Lcom/tencent/mm/sdk/platformtools/a;

    invoke-direct {v7}, Lcom/tencent/mm/sdk/platformtools/a;-><init>()V

    sput-object v7, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    :cond_2
    sget-object v7, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    iput v4, v7, Lcom/tencent/mm/sdk/platformtools/a;->a:F

    sget-object v4, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    iput v5, v4, Lcom/tencent/mm/sdk/platformtools/a;->b:F

    sget-object v4, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    iput v6, v4, Lcom/tencent/mm/sdk/platformtools/a;->c:I

    sget-object v4, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/mm/sdk/platformtools/a;->d:J

    sget-object v4, Lcom/tencent/mm/sdk/platformtools/LBSManager;->e:Lcom/tencent/mm/sdk/platformtools/a;

    iput v1, v4, Lcom/tencent/mm/sdk/platformtools/a;->e:I

    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->f:Lcom/tencent/mm/sdk/platformtools/b;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->b:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->c:Z

    if-nez v4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/g;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Z

    if-nez v4, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->h:Lcom/tencent/mm/sdk/platformtools/e;

    invoke-virtual {v1}, Lcom/tencent/mm/sdk/platformtools/e;->a()V

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Z

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->a:Z

    const-string v1, "MicroMsg.LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "location by provider ok:["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]  accuracy:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isGpsProvider:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->f:Lcom/tencent/mm/sdk/platformtools/b;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->b:Z

    if-nez v4, :cond_8

    if-nez v1, :cond_8

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->b:Z

    const-string v1, "MicroMsg.LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "report location by GPS ok:["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]  accuracy:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isGpsProvider:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->f:Lcom/tencent/mm/sdk/platformtools/b;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    goto :goto_1

    :cond_8
    iget-boolean v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->c:Z

    if-nez v4, :cond_5

    if-ne v1, v2, :cond_5

    iput-boolean v2, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->c:Z

    const-string v1, "MicroMsg.LBSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "report location by Network ok:["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]  accuracy:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isGpsProvider:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/sdk/platformtools/LBSManager;->f:Lcom/tencent/mm/sdk/platformtools/b;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    goto/16 :goto_1
.end method
