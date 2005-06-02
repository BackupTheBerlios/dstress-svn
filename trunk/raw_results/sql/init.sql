USE dstress;
DROP TABLE testcase;
DROP TABLE bugreport;
DROP TABLE testbed;
DROP TABLE compiler;
DROP TABLE runtime;
DROP TABLE system;

CREATE TABLE compiler(
        compiler        VARCHAR(254) NOT NULL,
        family          ENUM('gdc', 'dmd', 'dli', 'd.net') NOT NULL,
        released        DATE NOT NULL,
        url             TEXT DEFAULT NULL,
        comments        TEXT DEFAULT NULL,
        PRIMARY KEY(compiler),
) TYPE=InnoDB;

INSERT INTO compiler VALUES('dli-0.0.9', 'dli', '2002-08-21', 'http://www.opend.org/dli/arc/dli-0.0.9.tar.gz', DEFAULT);
INSERT INTO compiler VALUES('dli-0.1.0', 'dli', '2002-08-22', 'http://www.opend.org/dli/arc/dli-0.1.0.tar.gz', DEFAULT);
INSERT INTO compiler VALUES('dli-0.1.1', 'dli', '2002-08-28', 'http://www.opend.org/dli/arc/dli-0.1.1.tar.gz', DEFAULT);
INSERT INTO compiler VALUES('dli-0.1.2', 'dli', '2002-11-01', 'http://www.opend.org/dli/arc/dli-0.1.2.tar.gz', DEFAULT);

INSERT INTO compiler VALUES('D.NET Pre-Alpha 0.0.95.75', 'd.net', '2004-09-10', 'https://mywebspace.wisc.edu/daaugustine/web/d/', DEFAULT);
INSERT INTO compiler VALUES('D.NET 0.101.91', 'd.net', '2004-09-21','http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/10843', DEFAULT);

INSERT INTO compiler VALUES('DMD 0.125', 'dmd', '2005-05-20', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/523', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.124', 'dmd', '2005-05-19', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/486', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.123', 'dmd', '2005-05-11', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/394', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.122', 'dmd', '2005-05-03', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/373', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.121', 'dmd', '2005-04-15', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/266', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.120', 'dmd', '2005-04-06', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/158', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.119', 'dmd', '2005-03-18', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D.announce/9', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.118', 'dmd', '2005-03-12', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/19389', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.117', 'dmd', '2005-03-11', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/19281', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.116', 'dmd', '2005-03-07', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/18584', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.115', 'dmd', '2005-02-28', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/17796', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.114', 'dmd', '2005-02-28', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/17618', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.113', 'dmd', '2005-02-12', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/16497', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.112', 'dmd', '2005-01-27', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/15172', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.111', 'dmd', '2005-01-15', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/14591', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.110', 'dmd', '2004-12-30', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/14122', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.109', 'dmd', '2004-12-05', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/13320', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.108', 'dmd', '2004-11-30', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/13196', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.107', 'dmd', '2004-11-29', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/13164', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.106', 'dmd', '2004-11-09', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/12384', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.105', 'dmd', '2004-10-29', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/12203', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.104', 'dmd', '2004-10-21', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/12051', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.103', 'dmd', '2004-10-21', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/12023', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.102', 'dmd', '2004-09-21', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/10877', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.101', 'dmd', '2004-08-30', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/9989', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.100', 'dmd', '2004-08-20', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/9309', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.99', 'dmd', '2004-08-19', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/9149', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.98', 'dmd', '2004-08-05', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/8279', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.97', 'dmd', '2004-07-28', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/7434', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.96', 'dmd', '2004-07-22', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/6788', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.95', 'dmd', '2004-07-08', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/5616', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.94', 'dmd', '2004-06-27', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/4776', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.93', 'dmd', '2004-06-23', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/4447', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.92', 'dmd', '2004-06-07', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/3296', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.91', 'dmd', '2004-05-28', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/2400', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.90', 'dmd', '2004-05-20', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/1637', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.89', 'dmd', '2004-05-17', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/1349', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.88', 'dmd', '2004-05-06', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/630', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.86', 'dmd', '2004-04-26', 'http://www.digitalmars.com/drn-bin/wwwnews?digitalmars.D/12', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.82', 'dmd', '2004-03-30', 'http://www.digitalmars.com/drn-bin/wwwnews?D/26763', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.81', 'dmd', '2004-03-07', 'http://www.digitalmars.com/drn-bin/wwwnews?D/25244', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.80', 'dmd', '2004-03-05', 'http://www.digitalmars.com/drn-bin/wwwnews?D/25181', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.79', 'dmd', '2004-01-20', 'http://www.digitalmars.com/drn-bin/wwwnews?D/22254', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.78', 'dmd', '2004-01-14', 'http://www.digitalmars.com/drn-bin/wwwnews?D/21707', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.77', 'dmd', '2004-01-02', 'http://www.digitalmars.com/drn-bin/wwwnews?D/20999', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.76', 'dmd', '2003-11-21', 'http://www.digitalmars.com/drn-bin/wwwnews?D/19380', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.75', 'dmd', '2003-11-04', 'http://www.digitalmars.com/drn-bin/wwwnews?D/18914', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.74', 'dmd', '2003-10-17', 'http://www.digitalmars.com/drn-bin/wwwnews?D/18372', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.73', 'dmd', '2003-09-19', 'http://www.digitalmars.com/drn-bin/wwwnews?D/17332', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.72', 'dmd', '2003-09-14', 'http://www.digitalmars.com/drn-bin/wwwnews?D/17039', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.71', 'dmd', '2003-09-03', 'http://www.digitalmars.com/drn-bin/wwwnews?D/16475', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.70', 'dmd', '2003-08-24', 'http://www.digitalmars.com/drn-bin/wwwnews?D/16111', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.69', 'dmd', '2003-08-11', 'http://www.digitalmars.com/drn-bin/wwwnews?D/15424', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.68', 'dmd', '2003-07-14', 'http://www.digitalmars.com/drn-bin/wwwnews?D/14421', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.67', 'dmd', '2003-06-17', 'http://www.digitalmars.com/drn-bin/wwwnews?D/13903', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.66', 'dmd', '2003-06-08', 'http://www.digitalmars.com/drn-bin/wwwnews?D/13776', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.65', 'dmd', '2003-05-13', 'http://www.digitalmars.com/drn-bin/wwwnews?D/13282', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.64', 'dmd', '2003-05-12', 'http://www.digitalmars.com/drn-bin/wwwnews?D/13243', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.63', 'dmd', '2003-05-10', 'http://www.digitalmars.com/drn-bin/wwwnews?D/13134', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.61', 'dmd', '2003-03-30', 'http://www.digitalmars.com/drn-bin/wwwnews?D/12324', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.58', 'dmd', '2003-03-03', 'http://www.digitalmars.com/drn-bin/wwwnews?D/11443', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.57', 'dmd', '2003-02-25', 'http://www.digitalmars.com/drn-bin/wwwnews?D/11230', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.56', 'dmd', '2003-02-20', 'http://www.digitalmars.com/drn-bin/wwwnews?D/11090', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.54', 'dmd', '2003-02-15', 'http://www.digitalmars.com/drn-bin/wwwnews?D/10974', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.53', 'dmd', '2003-02-09', 'http://www.digitalmars.com/drn-bin/wwwnews?D/10833', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.52', 'dmd', '2003-02-05', 'http://www.digitalmars.com/drn-bin/wwwnews?D/10763', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.51', 'dmd', '2003-01-27', 'http://www.digitalmars.com/drn-bin/wwwnews?D/10510', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.50', 'dmd', '2002-11-20', 'http://www.digitalmars.com/drn-bin/wwwnews?D/9550', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.49', 'dmd', '2002-11-18', 'http://www.digitalmars.com/drn-bin/wwwnews?D/9519', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.48', 'dmd', '2002-10-25', 'http://www.digitalmars.com/drn-bin/wwwnews?D/9240', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.47', 'dmd', '2002-10-22', 'http://www.digitalmars.com/drn-bin/wwwnews?D/9193', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.46', 'dmd', '2002-10-22', 'http://www.digitalmars.com/drn-bin/wwwnews?D/9164', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.45', 'dmd', '2002-10-08', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8956', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.44', 'dmd', '2002-10-01', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8744', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.43', 'dmd', '2002-09-28', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8676', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.42', 'dmd', '2002-09-12', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8421', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.41', 'dmd', '2002-09-09', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8310', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.40', 'dmd', '2002-09-08', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8251', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.39', 'dmd', '2002-08-28', 'http://www.digitalmars.com/drn-bin/wwwnews?D/8016', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.38', 'dmd', '2002-08-22', 'http://www.digitalmars.com/drn-bin/wwwnews?D/7755', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.37', 'dmd', '2002-08-19', 'http://www.digitalmars.com/drn-bin/wwwnews?D/7585', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.36', 'dmd', '2002-08-15', 'http://www.digitalmars.com/drn-bin/wwwnews?D/7515', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.35', 'dmd', '2002-06-03', 'http://www.digitalmars.com/drn-bin/wwwnews?D/5761', DEFAULT);
INSERT INTO compiler VALUES('DMD 0.34', 'dmd', '2002-05-31', 'http://www.digitalmars.com/drn-bin/wwwnews?D/5645', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 30', 'dmd', '2002-04-27', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4763', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 28', 'dmd', '2002-04-21', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4724', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 27', 'dmd', '2002-04-16', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4682', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 26', 'dmd', '2002-04-10', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4593', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 25', 'dmd', '2002-04-07', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4540', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 24', 'dmd', '2002-03-29', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4419', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 23', 'dmd', '2002-03-26', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4291', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 22', 'dmd', '2002-03-14', 'http://www.digitalmars.com/drn-bin/wwwnews?D/4087', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 20', 'dmd', '2002-02-26', 'http://www.digitalmars.com/drn-bin/wwwnews?D/3775', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 19', 'dmd', '2002-02-09', 'http://www.digitalmars.com/drn-bin/wwwnews?D/3372', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 16', 'dmd', '2002-01-20', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2808', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 15', 'dmd', '2002-01-15', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2662', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 11', 'dmd', '2002-01-04', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2543', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 10', 'dmd', '2002-01-02', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2503', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 7', 'dmd', '2001-12-28', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2462', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 4', 'dmd', '2001-12-23', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2406', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 3', 'dmd', '2001-12-19', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2348', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 2', 'dmd', '2001-12-16', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2307', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 1', 'dmd', '2001-12-10', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2251', DEFAULT);
INSERT INTO compiler VALUES('DMD alpha 0', 'dmd', '2001-12-08', 'http://www.digitalmars.com/drn-bin/wwwnews?D/2226', DEFAULT);

CREATE TABLE runtime(
        runtime         VARCHAR(254) NOT NULL,
        family          ENUM('Ares', 'Deimos', 'gPhobos', 'Phobos') NOT NULL,
        released        DATE NOT NULL,
        url             TEXT DEFAULT NULL,
        comments         TEXT DEFAULT NULL,
        PRIMARY KEY(runtime),
) TYPE=InnoDB;

INSERT INTO runtime VALUES('DMD 0.125', 'phobos', '2005-05-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.124', 'phobos', '2005-05-19', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.123', 'phobos', '2005-05-11', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.122', 'phobos', '2005-05-03', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.121', 'phobos', '2005-04-15', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.120', 'phobos', '2005-04-06', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.119', 'phobos', '2005-03-18', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.118', 'phobos', '2005-03-12', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.117', 'phobos', '2005-03-11', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.116', 'phobos', '2005-03-07', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.115', 'phobos', '2005-02-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.114', 'phobos', '2005-02-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.113', 'phobos', '2005-02-12', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.112', 'phobos', '2005-01-27', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.111', 'phobos', '2005-01-15', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.110', 'phobos', '2004-12-30', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.109', 'phobos', '2004-12-05', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.108', 'phobos', '2004-11-30', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.107', 'phobos', '2004-11-29', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.106', 'phobos', '2004-11-09', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.105', 'phobos', '2004-10-29', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.104', 'phobos', '2004-10-21', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.103', 'phobos', '2004-10-21', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.102', 'phobos', '2004-09-21', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.101', 'phobos', '2004-08-30', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.100', 'phobos', '2004-08-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.99', 'phobos', '2004-08-19', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.98', 'phobos', '2004-08-05', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.97', 'phobos', '2004-07-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.96', 'phobos', '2004-07-22', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.95', 'phobos', '2004-07-08', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.94', 'phobos', '2004-06-27', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.93', 'phobos', '2004-06-23', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.92', 'phobos', '2004-06-07', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.91', 'phobos', '2004-05-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.90', 'phobos', '2004-05-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.89', 'phobos', '2004-05-17', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.88', 'phobos', '2004-05-06', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.86', 'phobos', '2004-04-26', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.82', 'phobos', '2004-03-30', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.81', 'phobos', '2004-03-07', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.80', 'phobos', '2004-03-05', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.79', 'phobos', '2004-01-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.78', 'phobos', '2004-01-14', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.77', 'phobos', '2004-01-02', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.76', 'phobos', '2003-11-21', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.75', 'phobos', '2003-11-04', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.74', 'phobos', '2003-10-17', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.73', 'phobos', '2003-09-19', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.72', 'phobos', '2003-09-14', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.71', 'phobos', '2003-09-03', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.70', 'phobos', '2003-08-24', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.69', 'phobos', '2003-08-11', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.68', 'phobos', '2003-07-14', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.67', 'phobos', '2003-06-17', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.66', 'phobos', '2003-06-08', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.65', 'phobos', '2003-05-13', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.64', 'phobos', '2003-05-12', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.63', 'phobos', '2003-05-10', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.61', 'phobos', '2003-03-30', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.58', 'phobos', '2003-03-03', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.57', 'phobos', '2003-02-25', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.56', 'phobos', '2003-02-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.54', 'phobos', '2003-02-15', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.53', 'phobos', '2003-02-09', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.52', 'phobos', '2003-02-05', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.51', 'phobos', '2003-01-27', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.50', 'phobos', '2002-11-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.49', 'phobos', '2002-11-18', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.48', 'phobos', '2002-10-25', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.47', 'phobos', '2002-10-22', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.46', 'phobos', '2002-10-22', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.45', 'phobos', '2002-10-08', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.44', 'phobos', '2002-10-01', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.43', 'phobos', '2002-09-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.42', 'phobos', '2002-09-12', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.41', 'phobos', '2002-09-09', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.40', 'phobos', '2002-09-08', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.39', 'phobos', '2002-08-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.38', 'phobos', '2002-08-22', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.37', 'phobos', '2002-08-19', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.36', 'phobos', '2002-08-15', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.35', 'phobos', '2002-06-03', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD 0.34', 'phobos', '2002-05-31', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 30', 'phobos', '2002-04-27', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 28', 'phobos', '2002-04-21', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 27', 'phobos', '2002-04-16', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 26', 'phobos', '2002-04-10', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 25', 'phobos', '2002-04-07', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 24', 'phobos', '2002-03-29', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 23', 'phobos', '2002-03-26', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 22', 'phobos', '2002-03-14', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 20', 'phobos', '2002-02-26', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 19', 'phobos', '2002-02-09', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 16', 'phobos', '2002-01-20', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 15', 'phobos', '2002-01-15', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 11', 'phobos', '2002-01-04', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 10', 'phobos', '2002-01-02', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 7', 'phobos', '2001-12-28', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 4', 'phobos', '2001-12-23', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 3', 'phobos', '2001-12-19', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 2', 'phobos', '2001-12-16', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 1', 'phobos', '2001-12-10', DEFAULT, DEFAULT);
INSERT INTO runtime VALUES('DMD alpha 0', 'phobos', '2001-12-08', DEFAULT, DEFAULT);

CREATE TABLE system(
        system          VARCHAR(254) NOT NULL,
        arch            ENUM('X86', 'X86_64', 'IA64', 'PPC', 'Sparc') NOT NULL,
        os              ENUM('AIX', 'BSD', 'Cygwin', 'Linux', 'Mac', 'MinGW', 'Solaris', 'Windows') NOT NULL,
        url             TEXT DEFAULT NULL,
        comments        TEXT DEFAULT NULL,
        PRIMARY KEY(system),
) TYPE=InnoDB;

INSERT INTO system VALUES('Mandrake Linux 10.0+', 'X86', 'Linux', DEFAULT, DEFAULT);

CREATE TABLE testbed(
        testbed          VARCHAR(254) NOT NULL,
        system           VARCHAR(254) NOT NULL,
        url              TEXT DEFAULT NULL,
        comments         TEXT DEFAULT NULL,
        INDEX(system),
        FOREIGN KEY(system)  REFERENCES system(system) ON UPDATE CASCADE ON DELETE RESTRICT,
        PRIMARY KEY(testbed),
) TYPE=InnoDB;

INSERT INTO testbed VALUES('laermschleuder', 'Mandrake Linux 10.0+', DEFAULT, DEFAULT);

CREATE TABLE bugreport(
        URI             VARCHAR(254) NOT NULL,
        reported        DATETIME NOT NULL,
        URL             TEXT DEFAULT NULL,
        author          TEXT DEFAULT NULL,
        description     TEXT NOT NULL,
        PRIMARY KEY(URI)
) TYPE=InnoDB;

CREATE TABLE testcase(
        name            VARCHAR(254) NOT NULL,
        destination     ENUM('compile', 'nocompile', 'run', 'norun', 'undefined') NOT NULL,
        uri             VARCHAR(254) UNIQUE,
        created         DATETIME NOT NULL,
        revied          DATETIME NOT NULL,
        modified        DATETIME NOT NULL,
        bugURI          VARCHAR(254) NOT NULL,
        comments        TEXT,
        INDEX(bugURI),
        FOREIGN KEY(bugURI) REFERENCES bugreport(URI) ON UPDATE CASCADE ON DELETE RESTRICT,
        PRIMARY KEY(name),
) TYPE=InnoDB;

