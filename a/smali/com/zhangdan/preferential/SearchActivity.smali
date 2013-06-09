.class public Lcom/zhangdan/preferential/SearchActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:I

.field private b:Lcom/zhangdan/preferential/a/p;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->b:Lcom/zhangdan/preferential/a/p;

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/a/p;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->e:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->a:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->e:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->a:I

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/zhangdan/preferential/SearchActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zhangdan/preferential/SearchActivity;->finish()V

    invoke-static {p0}, Lcom/zhangdan/preferential/a/z;->c(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060036
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300ee

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->setContentView(I)V

    new-instance v0, Lcom/zhangdan/preferential/a/p;

    invoke-direct {v0, p0}, Lcom/zhangdan/preferential/a/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->b:Lcom/zhangdan/preferential/a/p;

    const v0, 0x7f06031a

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->c:Landroid/widget/ListView;

    const v0, 0x7f060319

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->e:Landroid/widget/Button;

    const/high16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zhangdan/preferential/SearchActivity;->a:I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/SearchActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0300c6

    iget-object v2, p0, Lcom/zhangdan/preferential/SearchActivity;->b:Lcom/zhangdan/preferential/a/p;

    invoke-virtual {v2}, Lcom/zhangdan/preferential/a/p;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->f:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/SearchActivity;->f:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/SearchActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
