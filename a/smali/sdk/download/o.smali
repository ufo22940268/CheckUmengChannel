.class public final Lsdk/download/o;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static b:Lsdk/download/o;


# instance fields
.field c:Lsdk/download/n;

.field d:Landroid/os/Handler;

.field public e:Ljava/util/Collection;

.field f:[Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/sdk/Downloads"

    sput-object v0, Lsdk/download/o;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hint"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    iput-object v0, p0, Lsdk/download/o;->f:[Ljava/lang/String;

    iput-object p1, p0, Lsdk/download/o;->g:Landroid/content/Context;

    new-instance v0, Lsdk/download/p;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsdk/download/p;-><init>(Lsdk/download/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lsdk/download/o;->d:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsdk/download/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lsdk/download/o;
    .locals 1

    sget-object v0, Lsdk/download/o;->b:Lsdk/download/o;

    if-nez v0, :cond_0

    new-instance v0, Lsdk/download/o;

    invoke-direct {v0, p0}, Lsdk/download/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsdk/download/o;->b:Lsdk/download/o;

    :cond_0
    sget-object v0, Lsdk/download/o;->b:Lsdk/download/o;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_0

    const-string v1, "data_6"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "iswebicon"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    const-string v0, "destination"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    const-string v0, "uri"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "\\*"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hint"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lsdk/download/o;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_10"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GexinSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downLoadTimeOut newTask : time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsdk/c/a/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lsdk/download/k;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    iget-object v0, p0, Lsdk/download/o;->e:Ljava/util/Collection;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lsdk/download/o;->e:Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method public final a(Lsdk/download/n;)V
    .locals 0

    iput-object p1, p0, Lsdk/download/o;->c:Lsdk/download/n;

    return-void
.end method

.method public final a(I)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lsdk/download/o;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lsdk/download/k;->a:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
