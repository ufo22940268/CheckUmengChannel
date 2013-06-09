.class public final Lcom/zhangdan/app/activities/mailimport/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/zhangdan/app/activities/mailimport/n;
.implements Lcom/zhangdan/app/receiver/h;
.implements Lcom/zhangdan/app/widget/b;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/ViewStub;

.field private f:Landroid/view/ViewStub;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/zhangdan/app/activities/mailimport/i;

.field private k:Lcom/zhangdan/app/widget/EmailEditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Lcom/zhangdan/app/receiver/a;

.field private o:Lcom/zhangdan/app/widget/f;

.field private p:Lcom/zhangdan/app/activities/mailimport/b/c;

.field private q:Lcom/zhangdan/app/activities/mailimport/b/a;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Lcom/zhangdan/app/activities/mailimport/b/e;

.field private x:Lcom/zhangdan/app/activities/mailimport/b/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->t:Z

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->u:Ljava/lang/String;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/g;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/g;-><init>(Lcom/zhangdan/app/activities/mailimport/f;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->w:Lcom/zhangdan/app/activities/mailimport/b/e;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/h;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/mailimport/h;-><init>(Lcom/zhangdan/app/activities/mailimport/f;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->x:Lcom/zhangdan/app/activities/mailimport/b/b;

    iput-object p1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/f;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->c()Lcom/zhangdan/app/data/model/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/l;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->b:Landroid/view/View;

    const v1, 0x7f0601df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->f:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->b:Landroid/view/View;

    const v1, 0x7f0601e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->e:Landroid/view/ViewStub;

    const v0, 0x7f0601dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/CustomCheckBox;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/CustomCheckBox;->a(Lcom/zhangdan/app/widget/b;)V

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/mailimport/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->e()V

    return-void
.end method

.method static synthetic c(Lcom/zhangdan/app/activities/mailimport/f;)Lcom/zhangdan/app/widget/EmailEditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    return-object v0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;
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

.method private c(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 3

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->e()V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/b/c;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/mailimport/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->w:Lcom/zhangdan/app/activities/mailimport/b/e;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/b/c;->a(Lcom/zhangdan/app/activities/mailimport/b/e;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.51zhangdan.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9a8c\u8bc1\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-virtual {v1, v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/zhangdan/app/activities/mailimport/f;->t:Z

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/MailParseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "email_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v2}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mail_account_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "submit_time"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->v:I

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_3

    const-string v1, "first_login"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->v:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/zhangdan/app/activities/mailimport/f;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/c;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->p:Lcom/zhangdan/app/activities/mailimport/b/c;
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

.method static synthetic f(Lcom/zhangdan/app/activities/mailimport/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;
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

.method static synthetic g(Lcom/zhangdan/app/activities/mailimport/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->f()V

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/b/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/activities/mailimport/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->a()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->x:Lcom/zhangdan/app/activities/mailimport/b/b;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/mailimport/b/a;->a(Lcom/zhangdan/app/activities/mailimport/b/b;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->q:Lcom/zhangdan/app/activities/mailimport/b/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/b/a;->show()V

    return-void
.end method

.method static synthetic h(Lcom/zhangdan/app/activities/mailimport/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/mailimport/i;->a()V

    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    :cond_1
    iput-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    return-void
.end method

.method public final a(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    const-string v1, "*********"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/mailimport/f;->b(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto :goto_0
.end method

.method public final a(Lcom/zhangdan/app/data/model/http/ac;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/f;->r:Ljava/lang/String;

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/f;->s:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->a()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->a()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/f;->a(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->s:Ljava/lang/String;

    new-instance v8, Lcom/zhangdan/app/data/model/g;

    invoke-direct {v8}, Lcom/zhangdan/app/data/model/g;-><init>()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->c()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/zhangdan/app/data/model/g;->a(J)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->c:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/g;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/g;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/g;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/zhangdan/app/data/model/g;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_id = ? and auto_id = ?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    sget-object v1, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    move v1, v6

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "auto_id"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "user_id"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mail_account"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "last_web_access_time"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "local_pw"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "local_special_pw"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "local_times"

    invoke-virtual {v8}, Lcom/zhangdan/app/data/model/g;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    sget-object v1, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zhangdan.app.mail_account_update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "sid"

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "token"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    sget-object v1, Lcom/zhangdan/app/data/db/a/h;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/f;->r:Ljava/lang/String;

    iput-object v5, p0, Lcom/zhangdan/app/activities/mailimport/f;->s:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v1, v7

    goto/16 :goto_1
.end method

.method public final a(Lcom/zhangdan/app/widget/CustomCheckBox;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/widget/CustomCheckBox;->getId()I

    move-result v0

    const v1, 0x7f0601dd

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->b:Landroid/view/View;

    const v1, 0x7f0601e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    const v1, 0x7f0601e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f0800e9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    const v1, 0x7f0601e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f0800eb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    const v1, 0x7f0601e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    iput p3, p0, Lcom/zhangdan/app/activities/mailimport/f;->v:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->f:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    iput-object p2, p0, Lcom/zhangdan/app/activities/mailimport/f;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f0800dd

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/widget/EmailEditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/EmailEditText;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/widget/EmailEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->e:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    new-instance v0, Lcom/zhangdan/app/activities/mailimport/i;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->i:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/activities/mailimport/i;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->j:Lcom/zhangdan/app/activities/mailimport/i;

    invoke-virtual {v0, p1}, Lcom/zhangdan/app/activities/mailimport/i;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/zhangdan/app/widget/f;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zhangdan/app/widget/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/f;->a(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0, v2}, Lcom/zhangdan/app/widget/f;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->o:Lcom/zhangdan/app/widget/f;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/f;->show()V

    iput-boolean v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->t:Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/receiver/a;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lcom/zhangdan/app/receiver/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0, p0}, Lcom/zhangdan/app/receiver/a;->a(Lcom/zhangdan/app/receiver/h;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-string v1, "\u7f51\u7edc\u7e41\u5fd9\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f0800f6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " \u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f0800f5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/f;->c(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0, p1}, Lcom/zhangdan/app/activities/mailimport/f;->c(Lcom/zhangdan/app/data/model/http/MailStatusResult;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/model/http/MailStatusResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->g()V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->g()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_11
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_13
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_14
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->d()V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " \u8bf7\u5c1d\u8bd5\u91cd\u65b0\u63d0\u4ea4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

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
        0xf -> :sswitch_e
        0x64 -> :sswitch_3
        0x65 -> :sswitch_6
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_12
        0x12d -> :sswitch_13
        0x12e -> :sswitch_14
        0x3e8 -> :sswitch_15
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601e6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_bank_hotline"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/BankHotLineActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v1, 0x7f040003

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601ec

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_user_agreement"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/setting/UserAgreementActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601f0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_img_desc"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/activities/mailimport/ImportDescActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0601ed

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-string v1, "yuan_import_submit"

    invoke-static {v0, v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->g:Landroid/view/View;

    const v1, 0x7f0601eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080133

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zhangdan/app/h/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "*********"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v0, ""

    :cond_8
    new-instance v3, Lcom/zhangdan/app/activities/mailimport/m;

    iget-object v4, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/zhangdan/app/activities/mailimport/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Lcom/zhangdan/app/activities/mailimport/m;->a(Lcom/zhangdan/app/activities/mailimport/n;)V

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/f;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/zhangdan/app/activities/mailimport/f;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    const/4 v0, 0x5

    const-string v1, ""

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, ""

    aput-object v1, v4, v0

    invoke-virtual {v3, v4}, Lcom/zhangdan/app/activities/mailimport/m;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0602ee

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    invoke-virtual {v0}, Lcom/zhangdan/app/receiver/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->n:Lcom/zhangdan/app/receiver/a;

    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    const-class v2, Lcom/zhangdan/app/service/MailStatusService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zhangdan/app/activities/mailimport/f;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/zhangdan/app/activities/mailimport/f;->c()V

    goto/16 :goto_0
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->l:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->k:Lcom/zhangdan/app/widget/EmailEditText;

    invoke-virtual {v0}, Lcom/zhangdan/app/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/zhangdan/app/activities/mailimport/f;->m:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method
