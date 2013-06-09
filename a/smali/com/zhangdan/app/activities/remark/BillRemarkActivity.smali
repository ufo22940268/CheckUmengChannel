.class public Lcom/zhangdan/app/activities/remark/BillRemarkActivity;
.super Lcom/zhangdan/app/activities/WrappedActivity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/EditText;

.field private n:Ljava/lang/String;

.field private o:Lcom/zhangdan/app/activities/remark/d;

.field private p:Lcom/zhangdan/app/activities/remark/k;

.field private q:Z

.field private r:Lcom/zhangdan/app/activities/remark/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zhangdan/app/activities/WrappedActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->q:Z

    new-instance v0, Lcom/zhangdan/app/activities/remark/c;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/c;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->r:Lcom/zhangdan/app/activities/remark/c;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)Lcom/zhangdan/app/activities/remark/k;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->p:Lcom/zhangdan/app/activities/remark/k;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 4

    new-instance v0, Lcom/zhangdan/app/activities/remark/d;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/d;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/d;->b([Ljava/lang/Object;)Lcom/a/a/a/e/a/a;

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/d;->e()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/zhangdan/app/activities/WrappedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->q:Z

    if-eqz p3, :cond_0

    const-string v0, "custom_category_id"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->i:Landroid/widget/TextView;

    const-string v1, "category_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f060091

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->q:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f060091

    const v5, 0x7f060038

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008f

    if-ne v0, v1, :cond_3

    const-string v0, "yuan_remark_cancel"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->q:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060090

    if-ne v0, v1, :cond_4

    const-string v0, "yuan_remark_save"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "custom_category_id"

    iget v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "store_name"

    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "remark"

    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "auto_id"

    iget-wide v2, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06009a

    if-ne v0, v1, :cond_5

    iput-boolean v4, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->q:Z

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->p:Lcom/zhangdan/app/activities/remark/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/k;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060095

    if-ne v0, v1, :cond_6

    const-string v0, "yuan_remark_edit_store_name"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->r:Lcom/zhangdan/app/activities/remark/c;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/zhangdan/app/activities/remark/c;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060096

    if-ne v0, v1, :cond_7

    const-string v0, "yuan_remark_category"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060093

    if-ne v0, v1, :cond_1

    const-string v0, "yuan_remark_bind_taobao"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/zhangdan/app/activities/remark/TaobaoImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-wide/16 v6, 0x0

    const v5, 0x7f060093

    const/4 v4, 0x0

    const/16 v3, 0x8

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auto_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    const-string v1, "custom_category_id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    const-string v1, "store_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    const-string v1, "remark"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    iget-wide v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "auto_id"

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    const-string v0, "custom_category_id"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    const-string v0, "store_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    const-string v0, "remark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    invoke-static {p0, v0, v1}, Lcom/zhangdan/app/data/db/b/k;->a(Landroid/content/Context;J)Lcom/zhangdan/app/data/model/http/ak;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ak;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ak;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ak;->c()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/ak;->c()I

    move-result v0

    iput v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    :cond_1
    const v0, 0x7f06008f

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060090

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060092

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->i:Landroid/widget/TextView;

    iget v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    invoke-static {p0, v0}, Lcom/zhangdan/app/data/db/b/g;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->i:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/zhangdan/app/activities/remark/k;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/activities/remark/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->p:Lcom/zhangdan/app/activities/remark/k;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->p:Lcom/zhangdan/app/activities/remark/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "taobao"

    invoke-static {p0, v0}, Lcom/umeng/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/ZhangdanApplication;

    invoke-virtual {v0}, Lcom/zhangdan/app/ZhangdanApplication;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->n:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/zhangdan/app/widget/a;

    invoke-direct {v0, p0}, Lcom/zhangdan/app/widget/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/widget/a;->a(I)V

    const v1, 0x7f080150

    const v2, 0x7f0a0024

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/widget/a;->a(II)V

    const v1, 0x7f080152

    const v2, 0x7f080153

    new-instance v3, Lcom/zhangdan/app/activities/remark/a;

    invoke-direct {v3, p0}, Lcom/zhangdan/app/activities/remark/a;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    new-instance v4, Lcom/zhangdan/app/activities/remark/b;

    invoke-direct {v4, p0}, Lcom/zhangdan/app/activities/remark/b;-><init>(Lcom/zhangdan/app/activities/remark/BillRemarkActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhangdan/app/widget/a;->a(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zhangdan/app/activities/WrappedActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/zhangdan/app/activities/WrappedActivity;->onDestroy()V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->o:Lcom/zhangdan/app/activities/remark/d;

    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/d;->e()Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/zhangdan/app/data/model/http/am;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/am;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/WrappedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "auto_id"

    iget-wide v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "desc"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "custom_category_id"

    iget v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "store_name"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "remark"

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/zhangdan/app/h/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->r:Lcom/zhangdan/app/activities/remark/c;

    invoke-virtual {v0, v3}, Lcom/zhangdan/app/activities/remark/c;->removeMessages(I)V

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->r:Lcom/zhangdan/app/activities/remark/c;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/zhangdan/app/activities/remark/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;->p:Lcom/zhangdan/app/activities/remark/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/remark/k;->a(Ljava/util/List;)V

    goto :goto_0
.end method
