.class final Lcom/zhangdan/app/activities/shopping/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/shopping/d;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/d;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f0602d0

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->v()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/h;->m(I)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v3}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lcom/zhangdan/app/data/db/b/j;->a(Landroid/content/Context;JI)V

    if-nez v1, :cond_5

    const v0, 0x7f02015c

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    if-nez v1, :cond_6

    const v3, 0x7f080139

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_2
    if-eqz v0, :cond_0

    const v3, 0x7f0602cc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v1, :cond_3

    const/16 v2, 0x8

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    const v0, 0x7f02015b

    goto :goto_2

    :cond_6
    const v3, 0x7f08013a

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0602d1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->x()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_8
    :goto_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "keyword"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    iget-object v2, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v2}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080156

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0602d2

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "auto_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "desc"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "custom_category_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->j()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "store_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "remark"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zhangdan/app/activities/shopping/e;->a:Lcom/zhangdan/app/activities/shopping/d;

    invoke-static {v0}, Lcom/zhangdan/app/activities/shopping/d;->a(Lcom/zhangdan/app/activities/shopping/d;)Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method