.class final Lcom/zhangdan/app/activities/stage/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/stage/f;

.field private final synthetic b:Lcom/zhangdan/app/data/model/e;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/stage/f;Lcom/zhangdan/app/data/model/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/stage/i;->a:Lcom/zhangdan/app/activities/stage/f;

    iput-object p2, p0, Lcom/zhangdan/app/activities/stage/i;->b:Lcom/zhangdan/app/data/model/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/i;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-static {v1}, Lcom/zhangdan/app/activities/stage/f;->a(Lcom/zhangdan/app/activities/stage/f;)Lcom/zhangdan/app/ZhangdanApplication;

    move-result-object v1

    const-string v2, "bill_stage"

    iget-object v3, p0, Lcom/zhangdan/app/activities/stage/i;->b:Lcom/zhangdan/app/data/model/e;

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/i;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/stage/f;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/zhangdan/app/activities/stage/CardStageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/stage/i;->a:Lcom/zhangdan/app/activities/stage/f;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/stage/f;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
