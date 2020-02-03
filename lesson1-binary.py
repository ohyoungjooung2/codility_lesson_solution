def solution(N):
    # write your code in Python 3.6
    rs = '{0:b}'.format(N)
    if '0' not in rs:
       return 0
    rs = rs.split('1')
    if rs[-1] != '':
       rs.pop()
    if len(rs) == 0:
       frs = 0
    else:
       frs = len(max(rs))
    return frs
