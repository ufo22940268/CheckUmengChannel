.class final Lcom/zhangdan/app/activities/sms/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/g;

.field private final synthetic b:Lcom/zhangdan/app/widget/a;

.field private final synthetic c:Lcom/zhangdan/app/sms/a;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/g;Lcom/zhangdan/app/widget/a;Lcom/zhangdan/app/sms/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iput-object p2, p0, Lcom/zhangdan/app/activities/sms/h;->b:Lcom/zhangdan/app/widget/a;

    iput-object p3, p0, Lcom/zhangdan/app/activities/sms/h;->c:Lcom/zhangdan/app/sms/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->b:Lcom/zhangdan/app/widget/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/d;->c(Lcom/zhangdan/app/activities/sms/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/h;->c:Lcom/zhangdan/app/sms/a;

    invoke-virtual {v1}, Lcom/zhangdan/app/sms/a;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/zhangdan/app/sms/f;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/h;->c:Lcom/zhangdan/app/sms/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/d;->d(Lcom/zhangdan/app/activities/sms/d;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/sms/h;->a:Lcom/zhangdan/app/activities/sms/g;

    iget-object v0, v0, Lcom/zhangdan/app/activities/sms/g;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/sms/d;->c(Lcom/zhangdan/app/activities/sms/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u5220\u9664"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
