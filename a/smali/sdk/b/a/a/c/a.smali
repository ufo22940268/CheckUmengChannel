.class public final Lsdk/b/a/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/b/a/a/c/f;


# static fields
.field private static a:Lsdk/b/a/a/c/a;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:Lcom/igexin/sdk/SdkMainService;


# direct methods
.method private constructor <init>(Lcom/igexin/sdk/SdkMainService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/b/a/a/c/a;->d:Lcom/igexin/sdk/SdkMainService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsdk/b/a/a/c/a;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->a:Lcom/igexin/sdk/coordinator/d;

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->b:Lcom/igexin/sdk/coordinator/d;

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->c:Lcom/igexin/sdk/coordinator/d;

    if-ne v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->d:Lcom/igexin/sdk/coordinator/d;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/coordinator/c;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static a()Lsdk/b/a/a/c/a;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/a;->a:Lsdk/b/a/a/c/a;

    return-object v0
.end method

.method public static a(Lcom/igexin/sdk/SdkMainService;)Lsdk/b/a/a/c/a;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/a;->a:Lsdk/b/a/a/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/b/a/a/c/a;

    invoke-direct {v0, p0}, Lsdk/b/a/a/c/a;-><init>(Lcom/igexin/sdk/SdkMainService;)V

    sput-object v0, Lsdk/b/a/a/c/a;->a:Lsdk/b/a/a/c/a;

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/a;->a:Lsdk/b/a/a/c/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/c/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsdk/b/a/a/c/h;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "cantgetimei"

    :goto_0
    invoke-static {v0}, Lsdk/b/a/a/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lsdk/b/a/a/c/h;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->a:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, v2, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->b:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    aget-object v3, v2, v0

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->c:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    aget-object v3, v2, v0

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->d:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/igexin/sdk/coordinator/c;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/coordinator/c;

    return-object v0
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists ca (pkgname text primary key,signature text,permissions text, accesstoken blob, expire integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "select * from ca order by pkgname"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/igexin/sdk/coordinator/c;

    invoke-direct {v2}, Lcom/igexin/sdk/coordinator/c;-><init>()V

    const-string v0, "pkgname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/igexin/sdk/coordinator/c;->c(Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/b/a/a/c/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/util/List;)V

    const-string v0, "accesstoken"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lsdk/b/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lsdk/c/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v0}, Lcom/igexin/sdk/coordinator/c;->b(Ljava/lang/String;)V

    const-string v0, "expire"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/igexin/sdk/coordinator/c;->a(J)V

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    iget-object v0, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/igexin/sdk/coordinator/c;

    invoke-direct {v0}, Lcom/igexin/sdk/coordinator/c;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->a:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->b:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->c:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/sdk/coordinator/d;->d:Lcom/igexin/sdk/coordinator/d;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.igexin.pushmanager"

    invoke-virtual {v0, v3}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/lang/String;)V

    const-string v3, "308202133082017ca00302010202045080e7f1300d06092a864886f70d0101050500304e310b300906035504061302636e310b300906035504081302636e310b300906035504071302636e310b3009060355040a1302636e310b3009060355040b1302636e310b300906035504031302636e301e170d3132313031393035343130355a170d3232313031373035343130355a304e310b300906035504061302636e310b300906035504081302636e310b300906035504071302636e310b3009060355040a1302636e310b3009060355040b1302636e310b300906035504031302636e30819f300d06092a864886f70d010101050003818d0030818902818100805aee69ca3415ca32130b233fc07ad6eb666dcfe119efad8e5d0e4d51e175c6468a3869a5c131c342e5261a93f3bc30303ae0f23a3824d28df692092f8cf72ba7f2251f005ebfb1c1b210dc377aacf2168809f07e8d6756e6214c0288314388a2ead4a4453d358aa8cb1e2f02d1604c63cd0d075a558c718c43e3922f5198b50203010001300d06092a864886f70d0101050500038181004a4dc5634909f61710cf35229a63d7b8d2bfd89891d6ada1704b6c614d694cce35383cfb1fd8fed192dea23552413e74a9e1ff6e280246a6e30178a9b221b2dfee032cfc6acf660d62b514df92bbcf23e992a0543003705c679ba2fbae5acad0d89c6e44ee1cb05085d300ae60b7318472579007bde0e09ad75675a26a2f1c85"

    invoke-virtual {v0, v3}, Lcom/igexin/sdk/coordinator/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/coordinator/c;->a(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/coordinator/c;

    invoke-virtual {v0}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/c;)V
    .locals 4

    iget-object v0, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "pkgname"

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "permissions"

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lsdk/b/a/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lsdk/b/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/c/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "accesstoken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "expire"

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lsdk/b/a/a/c/a;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v1, v1, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v2, Lsdk/b/a/a/c/b;

    invoke-static {}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a()Lcom/igexin/sdk/coordinator/SdkMsgService;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lsdk/b/a/a/c/b;-><init>(Lsdk/b/a/a/c/a;Landroid/content/Context;Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    :cond_0
    return-void

    :cond_1
    const-string v1, "accesstoken"

    invoke-virtual {p2}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7

    invoke-static {}, Lsdk/c/a/c/a;->c()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    invoke-static {v1, v0}, Lsdk/b/a/a/c/a;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lsdk/b/a/a/c/a;->d:Lcom/igexin/sdk/SdkMainService;

    iget-object v0, v0, Lcom/igexin/sdk/SdkMainService;->b:Lsdk/c/a/b/d;

    new-instance v1, Lsdk/b/a/a/c/c;

    invoke-static {}, Lcom/igexin/sdk/coordinator/SdkMsgService;->a()Lcom/igexin/sdk/coordinator/SdkMsgService;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lsdk/b/a/a/c/c;-><init>(Lsdk/b/a/a/c/a;Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lsdk/c/a/b/d;->a(Lsdk/c/a/e/d;ZZ)Z

    iget-object v0, p0, Lsdk/b/a/a/c/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lsdk/b/a/a/c/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/sdk/coordinator/c;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/sdk/coordinator/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/igexin/sdk/coordinator/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/igexin/sdk/coordinator/c;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/igexin/sdk/coordinator/c;->c()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/igexin/sdk/coordinator/c;->a(J)V

    :cond_0
    invoke-virtual {p0, v4, v0}, Lsdk/b/a/a/c/a;->a(Ljava/lang/String;Lcom/igexin/sdk/coordinator/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsdk/b/a/a/c/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method