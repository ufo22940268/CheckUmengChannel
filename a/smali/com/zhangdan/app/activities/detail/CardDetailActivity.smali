.class public Lcom/zhangdan/app/activities/detail/CardDetailActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/activities/detail/b/d;
.implements Lcom/zhangdan/app/activities/remark/j;
.implements Lcom/zhangdan/app/f/b;
.implements Ljava/lang/Runnable;


# instance fields
.field private c:Lcom/zhangdan/app/data/model/j;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/zhangdan/app/activities/detail/a/b;

.field private i:Lcom/zhangdan/app/activities/detail/a/h;

.field private j:Lcom/zhangdan/app/activities/detail/a/o;

.field private k:Ljava/text/DecimalFormat;

.field private l:Ljava/util/List;

.field private m:I

.field private n:Lcom/zhangdan/app/f/a;

.field private o:Ljava/lang/String;

.field private p:Lcom/zhangdan/app/activities/remark/i;

.field private q:Lcom/zhangdan/app/activities/detail/n;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

.field private u:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->k:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    new-instance v0, Lcom/zhangdan/app/activities/detail/n;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/n;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->q:Lcom/zhangdan/app/activities/detail/n;

    new-instance v0, Lcom/zhangdan/app/activities/detail/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/a;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->u:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/popmenu/ZdListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;I)V
    .locals 0

    iput p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/a/r;->a:Landroid/net/Uri;

    const-string v2, "ub_id = ?"

    new-array v3, v8, [Ljava/lang/String;

    aput-object p1, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/zhangdan/app/data/db/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zhangdan/app/data/db/a/d;->a:Landroid/net/Uri;

    const-string v3, "ub_id = ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zhangdan/app/data/db/a/s;->a:Landroid/net/Uri;

    const-string v2, "ub_id = ?"

    new-array v3, v8, [Ljava/lang/String;

    aput-object p1, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "com.zhangdan.app"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/zhangdan/app/data/db/a/l;->a:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "bill_id = ?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/data/db/b/l;->b(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Lcom/zhangdan/app/activities/detail/CardHistoryActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zhangdan/app/activities/sms/AllSmsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bank_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "card_num"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string v1, "bill_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/data/model/j;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/b;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)Lcom/zhangdan/app/activities/detail/a/h;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->i:Lcom/zhangdan/app/activities/detail/a/h;

    return-object v0
.end method

.method static synthetic g(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->j:Lcom/zhangdan/app/activities/detail/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->j:Lcom/zhangdan/app/activities/detail/a/o;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/o;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->c()V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0202f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    const-string v0, "yuan_detail_alipay"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "alipays://platformapi/startapp?appId=09999999&sourceId=51zhangdan&clientVersion=%1$s&outTradeNo=%2$s&cardTailNumber=%3$s&amount=%4$s&userName=%5$s&bankMark=%6$s&returnUrl=%7$s"

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/zhangdan/app/activities/alipay/AlipayActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v2, "key_user_bank"

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0, v2, v3}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f08017f

    const-string v0, "yuan_detail_tel"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/data/db/b/b;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/f;->a()Lcom/zhangdan/app/data/model/http/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/i;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/ZhangdanApplication;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/remark/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v3}, Lcom/zhangdan/app/activities/detail/a/b;->b()Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/zhangdan/app/activities/detail/PartPaidActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "bill_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "ub_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "ub_type"

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "bill_balance"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v3

    sget-object v4, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v4}, Lcom/zhangdan/app/h/f;->b()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v0, "bill_state"

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->r:Ljava/util/List;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->s:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/zhangdan/app/activities/detail/a/b;-><init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/j;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/remark/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->r:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "return_amount"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/data/model/j;->i(F)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->k()F

    move-result v2

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->v()F

    move-result v3

    sget-object v4, Lcom/zhangdan/app/h/f;->a:Lcom/zhangdan/app/h/f;

    invoke-virtual {v4}, Lcom/zhangdan/app/h/f;->b()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {p0, v0}, Lcom/zhangdan/app/activities/a/j;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/j;->d(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.zhangdan.app.user_bank_changed"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ub_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "status"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "user_bank_type"

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "custom_category_id"

    invoke-virtual {p3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "store_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "remark"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "auto_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/zhangdan/app/activities/detail/a/b;->a(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/i;->e()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    :cond_5
    new-instance v0, Lcom/zhangdan/app/activities/remark/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/remark/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    new-array v1, v8, [Ljava/util/List;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/detail/a/b;->b()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/i;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/remark/i;->a(Lcom/zhangdan/app/activities/remark/j;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f060039

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f06009e

    if-ne v0, v3, :cond_8

    const-string v0, "yuan_detail_more"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    if-nez v0, :cond_3

    new-instance v0, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :cond_2
    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    new-instance v3, Lcom/zhangdan/app/activities/detail/a/p;

    invoke-direct {v3, p0, v0, v1}, Lcom/zhangdan/app/activities/detail/a/p;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v2, v3}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->t:Lcom/zhangdan/app/popmenu/ZdListPopupWindow;

    invoke-virtual {v0}, Lcom/zhangdan/app/popmenu/ZdListPopupWindow;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c()Lcom/zhangdan/app/c/a;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/c/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_6
    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v7}, Lcom/zhangdan/app/data/model/j;->c()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->a()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0600a1

    if-ne v0, v3, :cond_9

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0600a3

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0600a5

    if-ne v0, v3, :cond_b

    const-string v0, "yuan_detail_set_return_state"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f06024c

    if-ne v0, v3, :cond_0

    const-string v0, "yuan_detail_youhui_banner"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/zhangdan/preferential/SpecificRecommendActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v3}, Lcom/zhangdan/app/data/model/j;->e()I

    move-result v3

    aput v3, v1, v2

    const-string v2, "ids"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f06024c

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->setContentView(I)V

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g:Landroid/widget/ListView;

    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    const-string v1, "key_user_bank"

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/ZhangdanApplication;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "user_bank"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f08008e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zhangdan/app/activities/detail/a/o;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-direct {v1, v0, v2}, Lcom/zhangdan/app/activities/detail/a/o;-><init>(Landroid/view/View;Lcom/zhangdan/app/data/model/j;)V

    iput-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->j:Lcom/zhangdan/app/activities/detail/a/o;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009f

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const-string v1, "youhui_banner"

    invoke-static {p0, v1}, Lcom/umeng/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/zhangdan/app/activities/detail/a/h;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {p0, v2}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zhangdan/app/activities/detail/a/h;-><init>(Landroid/app/Activity;Lcom/zhangdan/app/data/model/j;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->i:Lcom/zhangdan/app/activities/detail/a/h;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->i:Lcom/zhangdan/app/activities/detail/a/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/zhangdan/app/h/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/zhangdan/app/f/a;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/app/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/f/a;->a(Lcom/zhangdan/app/f/b;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->b()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-ne p1, v7, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/detail/b/c;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/detail/b/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/activities/detail/b/c;->a(Lcom/zhangdan/app/activities/detail/b/d;)V

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v8, :cond_1

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/a;->a(I)V

    const v1, 0x7f08009e

    const v2, 0x7f0a0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f08001f

    const v2, 0x7f080020

    new-instance v3, Lcom/zhangdan/app/activities/detail/c;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/detail/c;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/detail/d;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/detail/d;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-ne p1, v9, :cond_2

    new-instance v0, Lcom/zhangdan/app/activities/alipay/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/alipay/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-ne p1, v10, :cond_3

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080141

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;I)V

    const v1, 0x7f08001f

    const v2, 0x7f080020

    new-instance v3, Lcom/zhangdan/app/activities/detail/e;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/detail/e;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/detail/f;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/detail/f;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    iget v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    const v1, 0x7f080144

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/zhangdan/app/widget/a;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0018

    invoke-virtual {v1, v2, v3}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;I)V

    const v2, 0x7f080146

    const v3, 0x7f080147

    new-instance v4, Lcom/zhangdan/app/activities/detail/g;

    invoke-direct {v4, p0, v0}, Lcom/zhangdan/app/activities/detail/g;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;Lcom/zhangdan/app/data/model/j;)V

    new-instance v0, Lcom/zhangdan/app/activities/detail/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/detail/h;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    array-length v0, v3

    if-lt v1, v0, :cond_8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/zhangdan/app/activities/detail/i;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/i;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/j;

    const v4, 0x7f080144

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x4

    iget-object v6, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v6}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_9
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080164

    const v2, 0x7f0a0023

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f08001f

    new-instance v2, Lcom/zhangdan/app/activities/detail/j;

    invoke-direct {v2, p0}, Lcom/zhangdan/app/activities/detail/j;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(ILandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x9

    if-ne p1, v0, :cond_b

    new-instance v0, Lcom/zhangdan/app/activities/detail/b/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->i()F

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/detail/b/a;-><init>(Landroid/content/Context;F)V

    new-instance v1, Lcom/zhangdan/app/activities/detail/b;

    invoke-direct {v1, p0}, Lcom/zhangdan/app/activities/detail/b;-><init>(Lcom/zhangdan/app/activities/detail/CardDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/b/a;->a(Lcom/zhangdan/app/activities/detail/b/b;)V

    goto/16 :goto_0

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n:Lcom/zhangdan/app/f/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/f/a;->c()V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/i;->e()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->p:Lcom/zhangdan/app/activities/remark/i;

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->h:Lcom/zhangdan/app/activities/detail/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/b;->a()V

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->i:Lcom/zhangdan/app/activities/detail/a/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->i:Lcom/zhangdan/app/activities/detail/a/h;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/detail/a/h;->b()V

    :cond_3
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->k:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/zhangdan/app/activities/detail/b/c;

    iget-object v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/zhangdan/app/activities/detail/b/c;->a(ILjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/zhangdan/app/widget/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l:Ljava/util/List;

    iget v2, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->m:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/data/model/j;

    const v2, 0x7f080144

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v5}, Lcom/zhangdan/app/data/model/j;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v4}, Lcom/zhangdan/app/data/model/j;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_bank"

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSetReturnStateClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601d6

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->A()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/data/model/j;->d(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {p0, v0}, Lcom/zhangdan/app/activities/a/j;->b(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601d7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->t()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601d8

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->j()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600a1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->o()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600a3

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->n()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600a5

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601d4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/j;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/j;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->r:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->c:Lcom/zhangdan/app/data/model/j;

    invoke-static {v0, v1}, Lcom/zhangdan/app/activities/detail/p;->a(Landroid/content/Context;Lcom/zhangdan/app/data/model/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->s:Ljava/util/List;

    iget-object v0, p0, Lcom/zhangdan/app/activities/detail/CardDetailActivity;->q:Lcom/zhangdan/app/activities/detail/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/detail/n;->sendEmptyMessage(I)Z

    return-void
.end method
