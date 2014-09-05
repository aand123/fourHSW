prologues:=3;

verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}
etex

u:=1cm;

beginfig(1)
  path ub[],lb[],b[],a[];
  pair d[];
  numeric s[];
  ub0=(-5u,3u)--(-4u,8u/3){dir -18.435}...(-1u,1.5u){right}--
    (0.5u,1.5u){right}...(2.5u,2u){right}--(4u,2u);
  ub1=ub0 shifted (0,0.3u);
  lb0=(-5u,2u)--(-4u,5u/3){dir -18.435}...(-1u,0.5u){right}--(4u,0.5u);
  lb1=lb0 shifted (0,-0.3u);
  draw ub0;
  draw lb0;
  s0=0.1;s1=2;s2=2.3;s3=2.9;
  for i=0 upto 3:
    z[i]=point s[i] of lb0;
    d[i]=direction s[i] of lb0 rotated 90;
    b[i]=((z[i] shifted -20d[i])--
	(z[i] shifted 20d[i]) cutbefore lb1 cutafter ub1);
    draw b[i] dashed withdots;
  endfor
  a1=buildcycle(lb0,b1,ub0,b0);
  a2=buildcycle(lb0,b2,ub0,b1);
  a3=buildcycle(lb0,b3,ub0,b2);
  d4=center a1;
  label(btex $\Omega_1$ etex,d4);
  d5=center a2;
  label(btex $\Omega_2$ etex,d5);
  d6=center a3;
  label(btex $\Omega_3$ etex,d6);
  label(btex $u_0$ etex,point 0 of b0);
  label(btex $u_1$ etex,point 0 of b1);
  label(btex $u_2$ etex,point 0 of b2);
  label(btex $u_3$ etex,point 0 of b3);
endfig;

end
