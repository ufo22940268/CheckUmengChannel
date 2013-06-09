.class public Lcom/zhangdan/app/ZhangdanApplication;
.super Landroid/app/Application;


# static fields
.field public static a:J

.field public static b:Z

.field private static h:Lcom/a/a/a/a;


# instance fields
.field public c:Lcom/baidu/mapapi/BMapManager;

.field private d:Lcom/zhangdan/app/c/a;

.field private e:Lcom/zhangdan/app/data/model/l;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zhangdan/app/ZhangdanApplication;->a:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zhangdan/app/ZhangdanApplication;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    return-void
.end method

.method public static f()Lcom/a/a/a/a;
    .locals 1

    sget-object v0, Lcom/zhangdan/app/ZhangdanApplication;->h:Lcom/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/zhangdan/app/data/model/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/ZhangdanApplication;->e:Lcom/zhangdan/app/data/model/l;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/ZhangdanApplication;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Lcom/zhangdan/app/c/a;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/zhangdan/app/data/model/l;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->e:Lcom/zhangdan/app/data/model/l;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/zhangdan/app/data/db/b/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/b/a;->a(Ljava/lang/String;)Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->e:Lcom/zhangdan/app/data/model/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/zhangdan/app/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->e:Lcom/zhangdan/app/data/model/l;

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->e()V

    return-void
.end method

.method public onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/zhangdan/app/c/a;

    invoke-direct {v0}, Lcom/zhangdan/app/c/a;-><init>()V

    iput-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    new-instance v0, Lcom/a/a/a/a;

    new-instance v1, Lcom/a/a/a/c;

    invoke-direct {v1}, Lcom/a/a/a/c;-><init>()V

    new-instance v2, Lcom/a/a/a/b/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/a/a/a/b/b;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v2}, Lcom/a/a/a/c;->a(Lcom/a/a/a/b/a;)Lcom/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/a/a/a/c;->a(Landroid/content/Context;)Lcom/a/a/a/b;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/a;-><init>(Landroid/content/Context;Lcom/a/a/a/b;)V

    sput-object v0, Lcom/zhangdan/app/ZhangdanApplication;->h:Lcom/a/a/a/a;

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/data/a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/data/a;->c:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    const/16 v6, 0x20

    shl-long/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    or-long v0, v1, v6

    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zhangdan/preferential/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public onTerminate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iput-object v1, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    iput-object v1, p0, Lcom/zhangdan/app/ZhangdanApplication;->e:Lcom/zhangdan/app/data/model/l;

    iput-object v1, p0, Lcom/zhangdan/app/ZhangdanApplication;->d:Lcom/zhangdan/app/c/a;

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    iput-object v1, p0, Lcom/zhangdan/app/ZhangdanApplication;->c:Lcom/baidu/mapapi/BMapManager;

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
