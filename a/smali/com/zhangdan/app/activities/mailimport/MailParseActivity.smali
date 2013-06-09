.class public Lcom/zhangdan/app/activities/mailimport/MailParseActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/zhangdan/app/receiver/e;
.implements Lcom/zhangdan/app/receiver/h;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Lcom/zhangdan/app/activities/mailimport/n;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/zhangdan/app/activities/mailimport/a/b;

.field private o:Ljava/util/List;

.field private p:Lcom/zhangdan/app/receiver/a;

.field private q:Ljava/text/SimpleDateFormat;

.field private r:Ljava/text/SimpleDateFormat;

.field private s:Ljava/text/SimpleDateFormat;

.field private t:J

.field private u:Z

.field private v:Lcom/zhangdan/app/widget/f;

.field private w:Z

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->q:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->r:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->s:Ljava/text/SimpleDateFormat;

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->u:Z

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->w:Z

    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->x:I

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->y:Z

    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->z:I

    iput v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->A:I

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->B:Z

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->C:Z

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/j;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/j;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->D:Lcom/zhangdan/app/activities/mailimport/n;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Lcom/zhangdan/app/widget/f;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->v:Lcom/zhangdan/app/widget/f;

    return-object v0
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->v:Lcom/zhangdan/app/widget/f;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->u:Z

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/mailimport/MailAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "email_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "first_login"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "mail_status_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->w:Z

    return-void
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p()V

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->B:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->m()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    return-void
.end method

.method private k()V
    .locals 6

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600b7

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0600ba

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEmailName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/zhangdan/app/data/db/b/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHistoryBillList.size() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/a/b;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/activities/mailimport/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l()V

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/aa;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aa;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->q:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iget-object v5, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->r:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->g(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_2
.end method

.method private l()V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->B:Z

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/zhangdan/app/service/MailBillService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "mail_account_id"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "token"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "user_id"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "start_time"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->t:J

    goto :goto_0
.end method

.method private m()V
    .locals 3

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->C:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->C:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.new_bill"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bill_count"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/mailimport/a/b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private n()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->m()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->s:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->t:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->t:J

    invoke-static {v0, v1, v3, v4}, Lcom/zhangdan/app/h/g;->a(JJ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    const v3, 0x7f080103

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/a/b;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v1, 0x7f0800ff

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/a/b;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080101

    const v2, 0x7f0a0022

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f080152

    const v2, 0x7f080153

    new-instance v3, Lcom/zhangdan/app/activities/mailimport/k;

    invoke-direct {v3, p0, v0}, Lcom/zhangdan/app/activities/mailimport/k;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/a;)V

    new-instance v4, Lcom/zhangdan/app/activities/mailimport/l;

    invoke-direct {v4, p0, v0}, Lcom/zhangdan/app/activities/mailimport/l;-><init>(Lcom/zhangdan/app/activities/mailimport/MailParseActivity;Lcom/zhangdan/app/widget/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/a;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v1, 0x7f080100

    invoke-virtual {p0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    invoke-virtual {v0}, Lcom/zhangdan/app/service/b;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zhangdan/app/service/MailBillService;->a:Lcom/zhangdan/app/service/b;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/MailBillService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private p()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->v:Lcom/zhangdan/app/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->v:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->v:Lcom/zhangdan/app/widget/f;
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


# virtual methods
.method public final a(Lcom/zhangdan/app/data/model/http/ab;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ab;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBillParse : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ab;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_1
    if-lt v5, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "save to db..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/zhangdan/app/data/db/b/i;->a(Landroid/content/Context;Ljava/util/List;)V

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v1}, Lcom/zhangdan/app/activities/mailimport/a/b;->b()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->i:Landroid/widget/TextView;

    const/16 v4, 0xa

    if-ge v1, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->y:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->z:I

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->z:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->A:I

    :goto_4
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->A:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/aa;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->h(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->q:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aa;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iget-object v8, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->r:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Lcom/zhangdan/app/data/model/http/aa;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/aa;->e()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n:Lcom/zhangdan/app/activities/mailimport/a/b;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/mailimport/a/b;->a(Lcom/zhangdan/app/data/model/http/aa;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_5

    :cond_5
    const-string v1, "N"

    goto :goto_3

    :cond_6
    iput v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->A:I

    goto :goto_4

    :cond_7
    move v0, v3

    goto/16 :goto_2
.end method

.method public final b(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v3, 0x1

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->x:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p()V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0

    :cond_1
    :sswitch_d
    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->x:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->w:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->w:Z

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l()V

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/zhangdan/app/widget/mail/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",recentley = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eq v0, v4, :cond_3

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_3

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xca

    if-ne v0, v1, :cond_5

    :cond_3
    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->y:Z

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->n()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->d()I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->y:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e9 -> :sswitch_2
        -0x3e8 -> :sswitch_1
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0xa -> :sswitch_5
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_a
        0xf -> :sswitch_d
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_d
        0xc9 -> :sswitch_d
        0xca -> :sswitch_d
        0x12c -> :sswitch_d
        0x12d -> :sswitch_d
        0x12e -> :sswitch_d
        0x3e8 -> :sswitch_d
    .end sparse-switch
.end method

.method protected final h()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060039

    if-ne v0, v1, :cond_4

    const-string v0, "yuan_import_parse_back"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    if-ne v0, v6, :cond_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->B:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->m()V

    :cond_3
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600b7

    if-ne v0, v1, :cond_5

    const-string v0, "yuan_import_parse_home"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600bb

    if-ne v0, v1, :cond_6

    const-string v0, "yuan_import_parse_submit"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput v6, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->x:I

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/m;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->D:Lcom/zhangdan/app/activities/mailimport/n;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/m;->a(Lcom/zhangdan/app/activities/mailimport/n;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/mailimport/m;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600c2

    if-ne v0, v1, :cond_8

    const-string v0, "yuan_import_parse_marquee_textview_click"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/mailimport/ManualImportDescActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    :cond_7
    if-ne v0, v7, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0602ee

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o()V

    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    const-string v1, "email_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    const-string v1, "first_login"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "email_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    const-string v1, "email_pwd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    const-string v1, "first_login"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "mail_account_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    const-string v1, "submit_time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mMailAccountId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubmitTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const v0, 0x7f0600b8

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->m:Landroid/widget/ListView;

    const v0, 0x7f0600c2

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->h:Lcom/zhangdan/app/widget/mail/MarqueeTextView;

    const v0, 0x7f0600bb

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->l:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->k()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v6, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->x:I

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/m;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/m;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->D:Lcom/zhangdan/app/activities/mailimport/n;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/m;->a(Lcom/zhangdan/app/activities/mailimport/n;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->a()Lcom/zhangdan/app/data/model/l;

    move-result-object v1

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/mailimport/m;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    :cond_2
    new-instance v0, Lcom/zhangdan/app/receiver/a;

    const/16 v1, 0x300

    invoke-direct {v0, p0, v1}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/h;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/e;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->p:Lcom/zhangdan/app/receiver/a;

    :cond_0
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->o()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "email_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "email_pwd"

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_login"

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
