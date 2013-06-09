.class final Lcom/zhangdan/app/activities/sms/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/sms/d;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/sms/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/sms/e;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/e;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->a(Lcom/zhangdan/app/activities/sms/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/sms/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/e;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->b(Lcom/zhangdan/app/activities/sms/d;)Lcom/zhangdan/app/activities/sms/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/sms/e;->a:Lcom/zhangdan/app/activities/sms/d;

    invoke-static {v1}, Lcom/zhangdan/app/activities/sms/d;->b(Lcom/zhangdan/app/activities/sms/d;)Lcom/zhangdan/app/activities/sms/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zhangdan/app/activities/sms/c;->b(Lcom/zhangdan/app/sms/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
