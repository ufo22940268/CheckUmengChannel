.class final Lcom/zhangdan/app/activities/newimport/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/newimport/f;


# direct methods
.method private constructor <init>(Lcom/zhangdan/app/activities/newimport/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/newimport/h;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zhangdan/app/activities/newimport/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/newimport/h;-><init>(Lcom/zhangdan/app/activities/newimport/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError:code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/tauth/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/h;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/f;->a(Lcom/zhangdan/app/activities/newimport/f;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u4e0a\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/newimport/h;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-static {v0}, Lcom/zhangdan/app/activities/newimport/f;->b(Lcom/zhangdan/app/activities/newimport/f;)Lcom/tencent/tauth/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tauth/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accessToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/zhangdan/app/activities/newimport/i;

    iget-object v2, p0, Lcom/zhangdan/app/activities/newimport/h;->a:Lcom/zhangdan/app/activities/newimport/f;

    invoke-direct {v1, v2, v3}, Lcom/zhangdan/app/activities/newimport/i;-><init>(Lcom/zhangdan/app/activities/newimport/f;I)V

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/zhangdan/app/activities/newimport/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method
