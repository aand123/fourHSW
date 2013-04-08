prologues:=2;

verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}
etex

u:=1cm;

beginfig(1)
  path ub,lb,isl,p,q;
  pair d[];
  ub=(0,4u)--(4u,5.5u){dir20.556}...(5u,6u)...(6u,7u)...(7u,6.5u)...(8u,6u)...
  (9u,5u)...(10u,4.8u)...{dir(-86.1859)}(10.3u,3u)--(10.5u,0);
  lb=(0,2u)--(4u,3.5u){dir20.556}...(6u,5u)...(8u,4u)...{dir(-86.1859)}(8.9u,3u)--(9.1u,0);
  isl=(7u,6u){up}...(6.5u,6.2u){left}...(5.5u,6u){down}...(6.2u,5.8u){right}...cycle;
  z0 = point 0.8 of ub;
  d0=direction 0.8 of ub rotated -90;
  p=(z0--z0 shifted 10d0) cutafter lb;
  z1 = point 8.2 of ub;
  d1=direction 8.2 of ub rotated -90;
  q=(z1--z1 shifted 10d1) cutafter lb;
  draw ub;
  draw lb;
  draw isl;  
  draw p dashed withdots;
  draw q dashed withdots;
  label(btex \large $V_L$ etex,(2.5u,4u));
  label(btex \large $V_i$ etex,(7.5u,5.5u));
  label(btex \large $V_R$ etex,(9.7u,1.5u));
endfig;

beginfig(2)
  path ub[],lb[];
  ub0=((-5u,2u)--(-2u,2u){right}...(-1u,1.5u){right}--(0.5u,1.5u))
  shifted (-0.5u,0);
  lb0=((-5u,0.3u)--(0.5u,0.3u)) shifted (-0.5u,0);
  ub1=((5u,2u)--(2u,2u){left}...(1u,1.5u){left}--(-0.5u,1.5u))
  shifted (0.5u,0);
  lb1=((5u,0.3u)--(-0.5u,0.3u)) shifted (0.5u,0);
  ub2=ub0 shifted (-u,-3u);
  lb2=lb0 shifted (-u,-3u);
  ub3=ub1 shifted (u,-3u);
  lb3=lb1 shifted (u,-3u);
  draw ub0;
  draw ub1;
  draw ub2;
  draw ub3;
  draw lb0;
  draw lb1;
  draw lb2;
  draw lb3;
  label(btex \large $A$ etex,(-4u,u));
  label(btex \large $A$ etex,(-5u,-2u));
  label(btex \large $B$ etex,(-1.5u,-2u));
  label(btex \large $B$ etex,(1.5u,-2u));
  label(btex \large $B$ etex,(0,u));
  label(btex \large $C$ etex,(4u,u));
  label(btex \large $C$ etex,(5u,-2u));
  label(btex \footnotesize(a) etex,(-7u,2.2u));
  label(btex \footnotesize(b) etex,(-7u,-0.8u));
  label(btex \footnotesize(c) etex,(0.5u,-0.8u));
endfig;

beginfig(3)
  path ub,lb,rub,lub,n[];
  pair d[],zaxes[],waxes[];
  ub=((0,2u)--(2u,4u){dir(45)}...(5u,6u){right}--(8u,6u)) rotated -10;
  lb=((2u,2u)--(3u,3u){dir(45)}...(6u,5u){right}--(8u,5u)) rotated -10;
  rub=((4u,3u)--(10u,3u)) shifted (2u,-u);
  lub=((4u,2u)--(10u,2u)) shifted (2u,-u);
  draw ub;
  draw lb;
  draw rub;
  draw lub;
  z1=point 1.5 of ub;
  d1=direction 1.5 of ub scaled 0.6 rotated 90;
  z2=point 0.5 of rub;
  d0=direction 0.5 of rub;
  d2=d0 scaled abs(d1)/abs(d0) rotated 90;
  z3=z1 shifted d1;
  z4=z2 shifted d2;
  n1=z1--z3;
  n2=z2--z4;
  drawarrow n1;
  drawarrow n2;
  label.urt(btex \small $\vec n$ etex,z3);
  label.rt(btex \small $F^{-1}(\vec n)$ etex,z4);
  zaxes0=z1 shifted (1.8u,-0.6u);
  zaxes1=zaxes0 shifted (0.5u,0);
  zaxes2=zaxes0 shifted (0,0.5u);
  drawarrow zaxes0--zaxes1;
  drawarrow zaxes0--zaxes2;
  label.urt(btex \small $x$ etex,zaxes1);
  label.urt(btex \small $y$ etex,zaxes2);
  waxes0=(7u,1.2u);
  waxes1=waxes0 shifted (0.5u,0);
  waxes2=waxes0 shifted (0,0.5u);
  drawarrow waxes0--waxes1;
  drawarrow waxes0--waxes2;
  label.urt(btex \small $u$ etex,waxes1);
  label.urt(btex \small $v$ etex,waxes2);
endfig;

beginfig(4)
  path ub,lb;
  ub=(-5u,3u)--(-4u,8u/3){dir -18.435}...(-1u,1.5u){right}--
    (0.5u,1.5u){right}...(2.5u,2u){right}--(4u,2u);
  lb=(-5u,2u)--(-4u,5u/3){dir -18.435}...(-1u,0.5u){right}--(4u,0.5u);
  draw ub;
  draw lb;
  draw (-0.8u,0)--(-0.8u,2u) dashed withdots;
  draw (0.3u,0)--(0.3u,2u) dashed withdots;
  label(btex $\Omega_1$ etex,(-4u,2u));
  label(btex $\Omega_2$ etex,(-0.2u,u));
  label(btex $\Omega_3$ etex,(3u,u));
endfig;

end