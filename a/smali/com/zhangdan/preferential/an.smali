.class public final Lcom/zhangdan/preferential/an;
.super Lcom/zhangdan/app/activities/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/zhangdan/preferential/a/p;

.field private e:Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zhangdan/app/activities/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/an;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/an;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangdan/preferential/a/z;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->d:Lcom/zhangdan/preferential/a/p;

    invoke-virtual {v0, p1}, Lcom/zhangdan/preferential/a/p;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/preferential/an;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->a:Landroid/view/View;

    const v2, 0x7f06004f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zhangdan/preferential/an;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->a:Landroid/view/View;

    const v2, 0x7f060027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zhangdan/preferential/an;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zhangdan/preferential/an;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zhangdan/preferential/an;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/an;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f060027
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zhangdan/app/activities/a;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/zhangdan/preferential/a/p;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/an;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zhangdan/preferential/a/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/an;->d:Lcom/zhangdan/preferential/a/p;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0300f0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zhangdan/preferential/an;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/zhangdan/app/activities/a;->onResume()V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/zhangdan/preferential/an;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300c6

    iget-object v3, p0, Lcom/zhangdan/preferential/an;->d:Lcom/zhangdan/preferential/a/p;

    invoke-virtual {v3}, Lcom/zhangdan/preferential/a/p;->a()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhangdan/preferential/an;->e:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/zhangdan/preferential/an;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zhangdan/preferential/an;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
